{ lib, config, ... }:

let
  icons = {
    aws.symbol = "  ";
    buf.symbol = " ";
    bun.symbol = " ";
    c.symbol = " ";
    cpp.symbol = " ";
    cmake.symbol = " ";
    conda.symbol = " ";
    crystal.symbol = " ";
    dart.symbol = " ";
    deno.symbol = " ";
    docker_context.symbol = " ";
    elixir.symbol = " ";
    elm.symbol = " ";
    fennel.symbol = " ";
    fossil_branch.symbol = " ";
    gcloud.symbol = "  ";
    git_branch.symbol = " ";
    golang.symbol = " ";
    guix_shell.symbol = " ";
    haskell.symbol = " ";
    haxe.symbol = " ";
    hg_branch.symbol = " ";
    java.symbol = " ";
    julia.symbol = " ";
    kotlin.symbol = " ";
    lua.symbol = " ";
    memory_usage.symbol = "󰍛 ";
    meson.symbol = "󰔷 ";
    nim.symbol = "󰆥 ";
    nix_shell.symbol = " ";
    nodejs.symbol = " ";
    ocaml.symbol = " ";
    package.symbol = "󰏗 ";
    perl.symbol = " ";
    php.symbol = " ";
    pijul_channel.symbol = " ";
    pixi.symbol = "󰏗 ";
    python.symbol = " ";
    rlang.symbol = "󰟔 ";
    ruby.symbol = " ";
    rust.symbol = "󱘗 ";
    scala.symbol = " ";
    swift.symbol = " ";
    zig.symbol = " ";
    gradle.symbol = " ";
    directory.read_only = "󰌾";
    hostname = {
      ssh_symbol = " ";
    };
    git_commit = {
      tag_symbol = " ";
    };
    os.symbols = {
      Alpaquita = " ";
      Alpine = " ";
      AlmaLinux = " ";
      Amazon = " ";
      Android = " ";
      Arch = " ";
      Artix = " ";
      CachyOS = " ";
      CentOS = " ";
      Debian = " ";
      DragonFly = " ";
      Emscripten = " ";
      EndeavourOS = " ";
      Fedora = " ";
      FreeBSD = " ";
      Garuda = "󰛓 ";
      Gentoo = " ";
      HardenedBSD = "󰞌 ";
      Illumos = "󰈸 ";
      Kali = " ";
      Linux = " ";
      Mabox = " ";
      Macos = " ";
      Manjaro = " ";
      Mariner = " ";
      MidnightBSD = " ";
      Mint = " ";
      NetBSD = " ";
      NixOS = " ";
      Nobara = " ";
      OpenBSD = "󰈺 ";
      openSUSE = " ";
      OracleLinux = "󰌷 ";
      Pop = " ";
      Raspbian = " ";
      Redhat = " ";
      RedHatEnterprise = " ";
      RockyLinux = " ";
      Redox = "󰀘 ";
      Solus = "󰠳 ";
      SUSE = " ";
      Ubuntu = " ";
      Unknown = " ";
      Void = " ";
      Windows = "󰍲 ";
    };
  };
in
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = lib.recursiveUpdate {
      format = "$ssh$directory$git_branch$git_status$aws$gcloud$nodejs$python$ruby$rust$golang$java$lua$haskell$scala$php$elixir$dart$deno$swift$c$cpp$zig$nix_shell$line_break$character";
      add_newline = false;

      directory = {
        truncation_length = 1;
        read_only = "󰌾";
        format = "[$path]($style) ";
        style = "blue bold";
      };

      hostname = {
        ssh_only = true;
        format = "[$ssh_symbol]($style) ";
        ssh_symbol = " ";
        style = "green";
      };

      git_branch = {
        symbol = " ";
        format = "[$symbol$branch]($style) ";
      };

      git_status = {
        format = "([$all_status$ahead_behind]($style)) ";
      };

      nix_shell = {
        symbol = " ";
        format = "[$symbol]($style) ";
      };

      nodejs = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      python = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      ruby = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      rust = {
        symbol = "󱘗 ";
        format = "[$symbol($version )]($style)";
      };

      golang = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      java = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      lua = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      haskell = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      scala = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      php = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      elixir = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      dart = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      deno = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      swift = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      c = {
        symbol = " ";
        format = "[$symbol]($style)";
      };

      cpp = {
        symbol = " ";
        format = "[$symbol]($style)";
      };

      zig = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      character = {
        success_symbol = "[➜ ](bold green)";
        error_symbol = "[✗](bold red)";
      };
    } icons;
  };
}
