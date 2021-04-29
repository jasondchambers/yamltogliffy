require 'GeometryConfig.rb'

class Origin < Struct.new(:x, :y)
end

class Cursor

  def initialize(x, y)
    @initial_x = x
    @initial_y = y
    @team_type_index = 0
    @team_group_index = 0
    @team_within_group_index = 0
    @team_breakdown_index = 0
    @team_breakdown_member_index = 0
    @team_breakdown_row_index = 0
    @origin = Origin.new(x,y)
  end

  def get_x_y_for_team_type_label()
    x = -119.99999999999997
    y = 160 + (@team_type_index * GeometryConfig::TEAM_TYPE_Y_OFFSET)
    return x,y
  end

  def get_x_y_for_team_type_main_canvas()
    x = 60
    y = 50 + (@team_type_index * GeometryConfig::TEAM_TYPE_Y_OFFSET)
    return x,y
  end

  def get_x_y_for_team_type_leaders()
    x = 60
    y = 20 + (@team_type_index * GeometryConfig::TEAM_TYPE_Y_OFFSET)
    return x,y
  end 

  def get_x_y_for_team_group()
    x = 80 + (@team_group_index * GeometryConfig::TEAM_GROUP_X_OFFSET)
    y = 110 + (@team_type_index * GeometryConfig::TEAM_TYPE_Y_OFFSET)
    return x,y
  end

  def get_x_y_for_team_group_label()
    x = 80 + (@team_group_index * GeometryConfig::TEAM_GROUP_X_OFFSET)
    y = 70 + (@team_type_index * GeometryConfig::TEAM_TYPE_Y_OFFSET)
    return x,y
  end

  def get_x_y_for_team_group_leaders()
    x = 100 + (@team_group_index * GeometryConfig::TEAM_GROUP_X_OFFSET)
    y = 130 + (@team_type_index * GeometryConfig::TEAM_TYPE_Y_OFFSET)
    return x,y
  end

  def get_x_y_for_team()
    x = 100 + (@team_group_index * GeometryConfig::TEAM_GROUP_X_OFFSET)
    y = 190 + (@team_within_group_index * GeometryConfig::TEAM_Y_OFFSET) + (@team_type_index * GeometryConfig::TEAM_TYPE_Y_OFFSET)
    return x,y
  end 

  def get_x_y_for_team_breakdown_name()
    x = 80 + (@team_breakdown_index * GeometryConfig::TEAM_BREAKDOWN_X_OFFSET)
    y = 1230 + (@team_breakdown_row_index * GeometryConfig::TEAM_BREAKDOWN_ROW_HEIGHT)
    return x,y
  end

  def get_x_y_for_team_breakdown_member()
    x = 80 + (@team_breakdown_index * GeometryConfig::TEAM_BREAKDOWN_X_OFFSET)
    y = 1270 + (@team_breakdown_member_index * GeometryConfig::TEAM_BREAKDOWN_MEMBER_Y_OFFSET) + (@team_breakdown_row_index * GeometryConfig::TEAM_BREAKDOWN_ROW_HEIGHT)
    return x,y
  end

  def next_team_within_group()
    @team_within_group_index += 1
  end

  def reset_team_within_group()
    @team_within_group_index = 0
  end

  def next_team_group_within_team_type()
    @team_group_index += 1
    reset_team_within_group()
  end

  def reset_team_group_within_team_type()
    @team_group_index = 0
    reset_team_within_group()
  end

  def next_team_type()
    @team_type_index += 1
    reset_team_group_within_team_type()
  end

  def next_team_breakdown()
    if @team_breakdown_index == GeometryConfig::TEAM_BREAKDOWN_TEAMS_PER_ROW-1 then 
      @team_breakdown_index = 0
      @team_breakdown_row_index += 1
    else
      @team_breakdown_index += 1
    end
    @team_breakdown_member_index = 0
  end

  def next_team_member()
    @team_breakdown_member_index += 1
  end
  
end
