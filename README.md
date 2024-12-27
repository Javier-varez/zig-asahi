# Zig overlay for Asahi Linux

An overlay for zig packages for asahi linux. Patches zig to use a page size of 16 KiB instead of 4 KiB.
This overlay fixes [this](https://github.com/ziglang/zig/issues/11308) issue as reported 
[here](https://github.com/AsahiLinux/docs/wiki/Broken-Software).

