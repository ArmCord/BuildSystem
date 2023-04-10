# ArmCord Build System - ABS
Due to how Electron seems to mess up every major stable release recently, we needed a way to distrribute ArmCord with older Electron versions to our users we decided to build ABS.
# Requirements
- VPS
- Ubuntu server (other distros might work, unsupported whatevevr)
- Caddy (from their deb repositories)
- Node.js and npm (latest stable)
- pnpm
- `rpm` package on Ubuntu (rpmbuild)
- Rust toolchain
# Setup
Git clone this repo and make sure you're meeting all of the requirements. Then just run the `deploy.sh` and adjust it to your needs.
