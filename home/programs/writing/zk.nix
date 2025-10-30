{
  lib,
  config,
  ...
}:
let
  inherit (config.modules.writing) wiki;

  settings = {
    notebook = lib.mkIf wiki.enable {
      dir = wiki.directory;
    };
    note = {
      filename = "{{format-date now '%Y%m%d%H%M%S'}}";
      template = "default.md";
    };
    format.markdown = {
      link-format = "[[{{metadata.id}}|{{title}}]]";
    };
    group.daily = lib.mkIf wiki.enable {
      paths = [ "dailies" ];
      note = {
        filename = "{{format-date now '%Y-%m-%d'}}";
        template = "daily_note.md";
      };
    };
  };
in
{
  options.modules.writing.zk.enable = lib.mkEnableOption "Enable zk";

  config = lib.mkIf config.modules.writing.zk.enable {
    programs.zk = {
      enable = true;
      inherit settings;
    };

    home.file.".config/zk/templates".source = ../../../zk/templates;
  };
}
