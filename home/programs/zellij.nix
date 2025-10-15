{ pkgs, ... }:

{
  programs.zellij = {
    enable = true;

    settings = {
      theme = "nord";
      default_layout = "compact";
      simplified_ui = true;
      show_startup_tips = false;
      ui = {
        pane_frames = false;
        mode_indicators = false;
      };
    };
  };
}
