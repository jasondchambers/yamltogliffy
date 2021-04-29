ColorTheme = Struct.new(
  :team_type_main_canvas_bg, 
  :team_type_header_bg,
  :team_group_label_bg,
  :team_group_bg,
  :team_group_leaders_bg,
  :team_name_bg
)

class ColorThemes
  
  def initialize() 
    @blue_theme = ColorTheme.new() 
    @blue_theme[:team_type_main_canvas_bg] = "#def0ff" 
    @blue_theme[:team_type_header_bg] = "#9fc5e8" 
    @blue_theme[:team_group_label_bg] = "#3c78d8"
    @blue_theme[:team_group_bg] = "#9fc5e8" 
    @blue_theme[:team_group_leaders_bg] = "#ffffff"
    @blue_theme[:team_name_bg] = "#1c4587" 
    @green_theme = ColorTheme.new() 
    @green_theme[:team_type_main_canvas_bg] = "#deead3" 
    @green_theme[:team_type_header_bg] = "#96c382" 
    @green_theme[:team_group_label_bg] = "#7db14e"
    @green_theme[:team_group_bg] = "#bddf9a" 
    @green_theme[:team_group_leaders_bg] = "#ffffff"
    @green_theme[:team_name_bg] = "#20b096" 
    @purple_theme = ColorTheme.new() 
    @purple_theme[:team_type_main_canvas_bg] = "#efe9f7" 
    @purple_theme[:team_type_header_bg] = "#c4b1e0" 
    @purple_theme[:team_group_label_bg] = "#8b67c4"
    @purple_theme[:team_group_bg] = "#c4b1e0" 
    @purple_theme[:team_group_leaders_bg] = "#ffffff"
    @purple_theme[:team_name_bg] = "#6f3187" 
  end

  def get_blue_theme()
    return @blue_theme
  end

  def get_green_theme()
    return @green_theme
  end

  def get_purple_theme()
    return @purple_theme
  end
end

