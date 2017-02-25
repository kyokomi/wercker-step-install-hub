wercker-step-install-hub
============================


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
