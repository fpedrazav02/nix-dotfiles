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

### 2️⃣ Clone Oh My Zsh (required):

Since Home Manager doesn't manage Oh My Zsh directly, you need to install it yourself:

```bash
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
```
> Tip: This only needs to be done once.

### 3️⃣ Initialize Home Manager (only the first time):

If you have never installed Home Manager on this machine, run:

```bash
nix run nixpkgs#home-manager/master -- switch --flake .
```

If `home-manager` is lost due to path issues. You may reinstall it:
```bash
nix profile install github:nix-community/home-manager
```

### 4️⃣ Activate the configuration:

Replace <username> with your system username:

```bash
home-manager switch --flake .#<username>
```
Example:

```bash
home-manager switch --flake .#fpedrazav
```

### 5️⃣ (Optional) Re-apply anytime:

After the initial setup, you can re-apply your configuration with:

```bash
home-manager switch --flake .#<username>
```

