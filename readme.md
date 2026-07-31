# LandawasOS

<div align="center">

![LandawasOS Banner](https://raw.githubusercontent.com/m0d2r/LandawasOS/main/banner.png)

**A lightweight operating system for ComputerCraft: Tweaked**

[![Version](https://img.shields.io/badge/version-BETA%2016-blue.svg)](https://github.com/m0d2r/LandawasOS)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

</div>

---

## About

LandawasOS is a custom operating system designed for [ComputerCraft: Tweaked](https://computercraft.gg/) — a Minecraft mod that adds programmable computers. It provides a user-friendly shell environment with built-in system utilities and an easy installation process.

> ⚠️ **Note:** This project is still under active development. New features and improvements will not be released frequently, Please keep that in mind

## Features

- **Fast & Lightweight** — Minimal resource usage, optimized for performance
- **Built-in Utilities** — Clean, Update, Commands, and more
- **Easy Installation** — One-command installer or manual setup
- **User-Friendly Shell** — Simple CLI interface for navigating the system
- **Auto-Updates** — Keep your system up to date with one command

## System Requirements

- **Minecraft** with [ComputerCraft: Tweaked](https://computercraft.gg/) installed
- **Advanced Computer** recommended for best experience
- Minecraft 1.20.x (depending on your CC:T version)

## Included Apps

| Command | Description |
|---------|-------------|
| `clean` | Remove old update files and free up disk space |
| `update` | Update LandawasOS to the latest version |
| `commands` | List all installed system commands |
| `easy installer` | Guided installation wizard for new users |

## Installation

### Quick Install (Recommended)

1. Start your ComputerCraft computer
2. Run the following commands:

```lua
lua
```

Then:

```lua
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/install.lua install.lua"); shell.run("install.lua")
```

3. Follow the on-screen instructions
4. Done! Your system is ready to use

### Manual Installation

If you prefer to install manually:

1. Shut down your computer in-game
2. Exit the world
3. Download the `.zip` file from the [latest release](../../releases)
4. Locate your save folder:
   - Open your Minecraft saves folder
   - Find `ComputerCraft` → `Computer ID` folder (type `id` in-game to find your ID)
5. Copy the extracted files to that folder
6. Load your world and start the computer

## 🔧 Usage

### Basic Commands

```lua
clean           -- Clean up old update files
update          -- Check for and install updates
commands        -- List available commands
```

### Creating Custom Apps

Place your `.lua` files in the `/Programs/` directory to add custom applications.

## Roadmap

- [ ] File manager with GUI
- [ ] Package manager for third-party apps
- [ ] Text editor
- [ ] Network utilities
- [ ] Process management
- [ ] User accounts and permissions

## Reporting Bugs

Found a bug? Please report it using [GitHub Issues](../../issues) with:

1. Steps to reproduce
2. Expected behavior
3. Actual behavior
4. Your system version (if applicable)

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

## Author

**m0d2r** — [GitHub](https://github.com/m0d2r)

## Show Your Support

If you find LandawasOS useful, give it a star! And feel free to fork and contribute.

---

<div align="center">

Made with ❤️ for the ComputerCraft community

</div>