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

### Initialize Home Manager (only the first time):

If you have never installed Home Manager on this machine, run:

#### cmd
```bash
nix run nixpkgs#home-manager -- switch --flake .#<username>@<target-so>
```

#### example
```bash
nix run nixpkgs#home-manager -- switch --flake .#fpedraza@x86_64-darwin
```

