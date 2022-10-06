<a name="readme-top"></a>

![issues-shield]
![forks-shield]
![stars-shield]
![license-shield]

<h3 align="center">Jellyfin Server</h3>

  <p align="center">
    A simple docker compose to setup a media server using jellyfin.
    <br />
    ·
    <a href="https://github.com/MagnusChase03/JellyfinServer/issues">Report Bug</a>
    ·
    <a href="https://github.com/MagnusChase03/JellyfinServer/issues">Request Feature</a>
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

## About The Project

I was intrested in setting up a media server and this is what I came up.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* ![docker-shield]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

### Prerequisites

To build this project yourself, you are going to need docker and docker compose

1) Go to [docker](https://docs.docker.com/engine/install/) and install docker
2) Then go to [docker compose](https://docs.docker.com/compose/install/) and install docker compose

### Installation

All you have to do is

1) Clone the repo
2) Put shows or movies in the mounted /Media folder

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Usage

Use docker compose to build and run the application

```
docker compose build
docker compose up
```

The jellyfin server should then be mapped to `localhost:8000`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the GPL License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[issues-shield]: https://img.shields.io/github/issues/MagnusChase03/JellyfinServer?style=for-the-badge
[forks-shield]: https://img.shields.io/github/forks/MagnusChase03/JellyfinServer?style=for-the-badge
[stars-shield]: https://img.shields.io/github/stars/MagnusChase03/JellyfinServer?style=for-the-badge
[license-shield]: https://img.shields.io/github/license/magnuschase03/JellyfinServer?style=for-the-badge
[docker-shield]: https://img.shields.io/badge/Docker-20232A?style=for-the-badge&logo=docker
