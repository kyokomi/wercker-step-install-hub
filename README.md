wercker-step-install-hub
============================

[![wercker status](https://app.wercker.com/status/408eca131fe6bc46d12e6541265114ba/m "wercker status")](https://app.wercker.com/project/bykey/408eca131fe6bc46d12e6541265114ba)

## Usage

In the `wercker.yml` of your application use the following step definition:

```
steps:
    - kyokomi/install-hub
      version:      "2.2.9"
      github_token: "<github token>"
      user_name:    "kyokomi"
      user_email:   "kyokomi1220@gmail.com"
```
