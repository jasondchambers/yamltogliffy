require 'yaml'
require 'mustache'
require 'templates.rb'
require 'cursor.rb'
require 'GeometryConfig.rb'
require 'ColorThemes.rb'

class GliffyGenerator

  def initialize(config_filename, x, y)
    @config_filename = config_filename
    @cursor = Cursor.new(x, y)
    color_themes = ColorThemes.new() 
    blue_theme = color_themes.get_blue_theme() 
    green_theme = color_themes.get_green_theme() 
    purple_theme = color_themes.get_purple_theme() 
    @themes = [blue_theme, green_theme, purple_theme]
    @theme_index = 0
    @all_teams = Hash.new
  end

  def get_next_theme()
    idx = @theme_index % @themes.size()
    @theme_index += 1
    return @themes[idx]
  end

  def get_team_groups(team_type)
    team_groups = Array.new
    team_type_details = team_type[1]
    if team_type_details['teamgroups'] != nil then 
      team_groups = team_type_details['teamgroups']
    end
    return team_groups
  end

  def get_team_type_leaders(team_type)
    team_type_leaders_array = Array.new
    team_type_details = team_type[1]
    if team_type_details['leaders'] != nil then 
      team_type_details['leaders'].each { |leader| 
        team_type_leaders_array << leader.split.first 
      }
    end
    return team_type_leaders_array.join(sep=', ') 
  end

  def get_team_group_leaders(team_group)
    team_group_leaders_array = Array.new
    teamgroup_details = team_group[1]
    if teamgroup_details['leaders'] != nil then 
      teamgroup_details['leaders'].each { |leader| 
        team_group_leaders_array << leader.split.first 
      }
    end
    return team_group_leaders_array.join(sep=', ') 
  end

  def get_teams(team_group)
    teams = Array.new
    team_group_details = team_group[1]
    if team_group_details['teams'] != nil then 
      teams = team_group_details['teams']
      @all_teams = @all_teams.merge(team_group_details['teams'])
    end
    return teams
  end

  def build_team(team,theme)
    team_x, team_y = @cursor.get_x_y_for_team()
    team_name_bg = theme[:team_name_bg]
    puts Mustache.render(TEAM_TEMPLATE, 
      team_name: team[0].chomp,
      team_x: team_x,
      team_y: team_y,
      team_name_bg: team_name_bg
    )
    @cursor.next_team_within_group()
  end

  def build_team_group(team_group,theme)
    team_group_label_x, team_group_label_y = @cursor.get_x_y_for_team_group_label() 
    team_group_label_bg = theme[:team_group_label_bg]
    team_group_leaders_x, team_group_leaders_y = @cursor.get_x_y_for_team_group_leaders()
    team_group_leaders = get_team_group_leaders(team_group)
    team_group_bg = theme[:team_group_bg]
    team_group_x, team_group_y = @cursor.get_x_y_for_team_group() 
    puts Mustache.render(TEAM_GROUP_TEMPLATE, 
      team_group: team_group[0].chomp,
      team_group_label_x: team_group_label_x,
      team_group_label_y: team_group_label_y,
      team_group_label_bg: team_group_label_bg,
      team_group_leaders: team_group_leaders,
      team_group_leaders_x: team_group_leaders_x,
      team_group_leaders_y: team_group_leaders_y,
      team_group_x: team_group_x,
      team_group_y: team_group_y,
      team_group_bg: team_group_bg)
    teams = get_teams(team_group)
    teams.each {|team|
      build_team(team,theme)
    }
    @cursor.next_team_group_within_team_type()
  end

  def build_team_type(team_type)
    theme = get_next_theme()
    team_type_label_x, team_type_label_y = @cursor.get_x_y_for_team_type_label()
    team_type_main_canvas_bg = theme[:team_type_main_canvas_bg]
    team_type_main_canvas_x, team_type_main_canvas_y = @cursor.get_x_y_for_team_type_main_canvas()
    team_type_header_bg = theme[:team_type_header_bg]
    team_type_leaders = get_team_type_leaders(team_type) 
    team_type_leaders_x, team_type_leaders_y = @cursor.get_x_y_for_team_type_leaders()
    puts Mustache.render(TEAM_TYPE_TEMPLATE, 
      team_type: team_type[0].chomp, 
      team_type_label_x: team_type_label_x,
      team_type_label_y: team_type_label_y,
      team_type_main_canvas_bg: team_type_main_canvas_bg, 
      team_type_main_canvas_x: team_type_main_canvas_x,
      team_type_main_canvas_y: team_type_main_canvas_y,
      team_type_header_bg: team_type_header_bg, 
      team_type_leaders: team_type_leaders,
      team_type_leaders_x: team_type_leaders_x,
      team_type_leaders_y: team_type_leaders_y)
    team_groups = get_team_groups(team_type)
    team_groups.each {|team_group|
      build_team_group(team_group,theme)
    }
    @cursor.next_team_type()
  end

  def get_team_breakdown_member_bg(team_member) 
    if team_member.include?('SoftServe') then
      return "#d4a6bc"
    elsif team_member.include?('OFS') then
      return "#d0e0e3"
    elsif team_member.include?('Prestige') then
      return "#daead5"
    else #Employee
      return "#fff2cf"
    end
  end

  def build_team_breakdown()
    @all_teams.each{ |team_name,team_members|
      team_breakdown_name_x, team_breakdown_name_y = @cursor.get_x_y_for_team_breakdown_name()
      puts Mustache.render(TEAM_BREAKDOWN_NAME_TEMPLATE, 
        team_name: team_name,
        team_breakdown_name_x: team_breakdown_name_x,
        team_breakdown_name_y: team_breakdown_name_y)
        unless team_members.nil?
          team_members.each{|team_member| 
            team_breakdown_member_bg = get_team_breakdown_member_bg(team_member)
            team_member = team_member.split(',')[0].split(' ')[0] + ' (' + team_member.split(',')[1] + ')'
            team_breakdown_member_x, team_breakdown_member_y = @cursor.get_x_y_for_team_breakdown_member() 
            puts Mustache.render(TEAM_BREAKDOWN_MEMBERS_TEMPLATE, 
              team_member: team_member, 
              team_breakdown_member_bg: team_breakdown_member_bg,
              team_breakdown_member_x: team_breakdown_member_x,
              team_breakdown_member_y: team_breakdown_member_y)
            @cursor.next_team_member()
          }
        end
      @cursor.next_team_breakdown()
    }
  end

  def generate()
    puts HEADER_TEMPLATE
    @org = YAML.load_file(@config_filename)
    @org['teamtypes'].each { |team_type|
      build_team_type(team_type)
    }
    build_team_breakdown()
    puts FOOTER_TEMPLATE
  end

  #
  # Useful for parsing/debugging/development
  #
  def dump()
    @org = YAML.load_file(@config_filename)
    #puts @org
    puts "teamtypes:"
    @org['teamtypes'].each { |team_type|
      puts "  " + team_type[0] + ":"
      team_type_details = team_type[1]
      if team_type_details['leaders'] != nil then 
        puts "    leaders:"
        team_type_details['leaders'].each { |leader| 
          puts "      - "+leader 
        }
      end
      if team_type_details['teamgroups'] != nil then 
        puts "    teamgroups:"
        team_type_details['teamgroups'].each {|teamgroup| 
          puts "      "+teamgroup[0] + ":"
          teamgroup_details = teamgroup[1]
          if teamgroup_details['leaders'] != nil then 
            puts "        leaders:"
            teamgroup_details['leaders'].each { |leader| 
              puts "          - "+leader 
            }
          end
          puts "        teams:"
          if teamgroup_details['teams'] != nil then 
            teamgroup_details['teams'].each { |team| 
              puts "          " + team[0] + ":"
              team_members = team[1] 
              team_members.each { |team_member| 
                puts "            - " + team_member 
              } 
            }
          end
        }
      end
    }
  end
end
