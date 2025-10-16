# 🧩 Nix + Home Manager

## ⚡ Requirements

- [Nix](https://nixos.org/download.html) installed with flakes enabled.

---

## ✨ How to Install Nix

If you don't have Nix yet, run this:

```bash
sh <(curl -L https://nixos.org/nix/install) --daemon
```

After installation, close and reopen your terminal.

Enable flakes and nix-command:

```bash
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

## 🚀 Set Up This Configuration

### 1️⃣ Clone this repository:

```bash
git clone https://github.com/fpedrazav02/nix-dotfiles.git
```

- Cd into the project after cloning

### Update the target user in the flake.nix file:
> This is important! This allows your username to be the target of the configuration.

### Run Home Manager:

#### cmd
```bash
nix run nixpkgs#home-manager -- switch --flake .#<username>@<target-so>
```

#### example
```bash
nix run nixpkgs#home-manager -- switch --flake .#$(whoami)@x86_64-darwin
```



