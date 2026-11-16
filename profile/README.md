<div align="center">

<img src="logo.png" width="128" alt="pearOS logo">

# pearOS BSD

**A Mac-style desktop that runs on FreeBSD — and runs real Mac apps.**

[![Website](https://img.shields.io/badge/website-pearos.xyz-30d158?style=for-the-badge&logo=safari&logoColor=white)](https://pearos.xyz)
[![FreeBSD](https://img.shields.io/badge/built%20on-FreeBSD-ab2b28?style=for-the-badge&logo=freebsd&logoColor=white)](https://www.freebsd.org)
[![Repos](https://img.shields.io/badge/repositories-15-0a84ff?style=for-the-badge&logo=github&logoColor=white)](https://github.com/orgs/pearOS-bsd/repositories)
![Visitors](https://komarev.com/ghpvc/?username=pearOS-bsd&label=Visitors&color=ff9f0a&style=for-the-badge)

<img src="desktop.jpg" width="92%" alt="The pearOS desktop: Finder, Terminal, Dock">

</div>

---

## In one minute

**pearOS BSD** looks and feels like a Mac, but it is free, open and runs on **FreeBSD** (a fast, stable, grown‑up operating system).

We build all the pieces ourselves:

- 🪟 a **window server** that draws windows, menus and the Dock,
- 🍎 an **AppKit** — the part of macOS that apps use to make buttons, text and windows,
- 🚀 a way to **open Mac apps** on it: `open Notes.app`,
- 🧰 the **background services** a Mac needs (preferences, icons, notifications, Wi‑Fi…).

> Think of it as a Mac‑shaped house built on a very strong BSD foundation.

---

## How the pieces fit

```mermaid
flowchart TB
    A["🍏 A Mac app (TextEdit, Stickies…)"] --> O["open — starts the app"]
    O --> K["AppKit — buttons, text, windows"]
    K --> S["SkyLight — how apps talk to the screen"]
    S --> W["WindowServer — draws everything"]
    D["d — background services"] --- K
    X["darwinator — lets FreeBSD run Mac programs"] --- O
    W --> F["🐚 FreeBSD"]
    X --> F
```

---

## The repositories (in plain words)

| | Repository | What it is |
|---|---|---|
| 🧠 | [**darwinator**](https://github.com/pearOS-bsd/darwinator) | Teaches FreeBSD to run programs made for a Mac. |
| 🪟 | [**WindowServer**](https://github.com/pearOS-bsd/WindowServer) | The screen: windows, mouse, keyboard, animations. |
| ✨ | [**SkyLight**](https://github.com/pearOS-bsd/SkyLight) | The “language” apps use to ask the screen for a window. |
| 🧩 | [**AppKit**](https://github.com/pearOS-bsd/AppKit) | The toolbox for buttons, menus and text — our own copy. |
| 🚀 | [**open**](https://github.com/pearOS-bsd/open) | `open SomeApp.app` — starts a Mac app on pearOS. |
| ⚙️ | [**d**](https://github.com/pearOS-bsd/d) | Services that run quietly in the background. |
| 💿 | [**iso**](https://github.com/pearOS-bsd/iso) | Builds the installer disk image. |
| 🥾 | [**ploader**](https://github.com/pearOS-bsd/ploader) | The boot screen. |
| 📦 | [**pkgbuild**](https://github.com/pearOS-bsd/pkgbuild) · [**package-repo**](https://github.com/pearOS-bsd/package-repo) | Where software packages come from. |
| 🛍️ | [**AppStore-Backend**](https://github.com/pearOS-bsd/AppStore-Backend) | The server behind the App Store. |
| 🎮 | [**virtio**](https://github.com/pearOS-bsd/virtio) · [**clevo_wmi**](https://github.com/pearOS-bsd/clevo_wmi) | Drivers (virtual graphics, Clevo keyboard lights). |
| 🗃️ | [**misc**](https://github.com/pearOS-bsd/misc) | Everything not moved yet — it is being tidied up. |

---

## Featured

<p align="center">
  <a href="https://github.com/pearOS-bsd/darwinator"><img src="https://github-readme-stats.vercel.app/api/pin/?username=pearOS-bsd&repo=darwinator&theme=tokyonight&hide_border=true" alt="darwinator"></a>
  <a href="https://github.com/pearOS-bsd/WindowServer"><img src="https://github-readme-stats.vercel.app/api/pin/?username=pearOS-bsd&repo=WindowServer&theme=tokyonight&hide_border=true" alt="WindowServer"></a>
</p>
<p align="center">
  <a href="https://github.com/pearOS-bsd/AppKit"><img src="https://github-readme-stats.vercel.app/api/pin/?username=pearOS-bsd&repo=AppKit&theme=tokyonight&hide_border=true" alt="AppKit"></a>
  <a href="https://github.com/pearOS-bsd/d"><img src="https://github-readme-stats.vercel.app/api/pin/?username=pearOS-bsd&repo=d&theme=tokyonight&hide_border=true" alt="d"></a>
</p>

---

## The project in numbers

<p align="center">
  <img height="170" src="https://github-readme-stats.vercel.app/api?username=alxb421&show_icons=true&theme=tokyonight&hide_border=true&count_private=true&include_all_commits=true&title_color=30d158&icon_color=0a84ff" alt="Stats">
  <img height="170" src="https://github-readme-stats.vercel.app/api/top-langs/?username=alxb421&layout=compact&theme=tokyonight&hide_border=true&langs_count=8&title_color=30d158" alt="Languages">
</p>

<p align="center">
  <img src="https://github-readme-streak-stats.herokuapp.com/?user=alxb421&theme=tokyonight&hide_border=true&ring=30d158&fire=ff9f0a&currStreakLabel=30d158" alt="Streak">
</p>

### Activity

<p align="center">
  <img src="https://github-readme-activity-graph.vercel.app/graph?username=alxb421&theme=tokyo-night&hide_border=true&area=true&color=30d158&line=0a84ff&point=ff9f0a" alt="Activity graph" width="96%">
</p>

### Growth

<p align="center">
  <a href="https://star-history.com/#pearOS-bsd/darwinator&pearOS-bsd/WindowServer&pearOS-bsd/AppKit&Date">
    <img src="https://api.star-history.com/svg?repos=pearOS-bsd/darwinator,pearOS-bsd/WindowServer,pearOS-bsd/AppKit&type=Date&theme=dark" width="70%" alt="Star history">
  </a>
</p>

### Made by

<p align="center">
  <a href="https://github.com/pearOS-bsd/misc/graphs/contributors"><img src="https://contrib.rocks/image?repo=pearOS-bsd/darwinator" alt="Contributors"></a>
</p>

---

## Want to help?

1. ⭐ **Star** the repositories you like — it really helps.
2. 🐛 **Try it** in a virtual machine and tell us what breaks (open an *Issue*).
3. 🛠️ **Pick a small task** — every repo has a README that says how to build it.

<div align="center">

**Made with ❤️ for people who like Macs, BSD, and understanding how things work.**

</div>
