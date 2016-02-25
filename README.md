# gitlab-mattermost-vagrant
GitLab + Mattermost Sample for Vagrant (VirtualBox + CentOS 7.2.x)

# Usage

## SMTP setting

please edit your mail-config.

```shell
$ vi ./conf/gitlab/gitlab.rb

---
> # smtp setting(gmail)
> # @see http://doc.gitlab.com/omnibus/settings/smtp.html
> gitlab_rails['smtp_enable'] = true
> gitlab_rails['smtp_address'] = "smtp.gmail.com"
> gitlab_rails['smtp_port'] = 587
> gitlab_rails['smtp_user_name'] = "my.email@gmail.com"
> gitlab_rails['smtp_password'] = "my-gmail-password"
> gitlab_rails['smtp_domain'] = "smtp.gmail.com"
> gitlab_rails['smtp_authentication'] = "login"
> gitlab_rails['smtp_enable_starttls_auto'] = true
> gitlab_rails['smtp_tls'] = false
> gitlab_rails['smtp_openssl_verify_mode'] = 'peer'
---
```

## startup

```
$ vagrant up
```

## shutdown

```
$ vagrant halt
```

## access sample

### gitlab

http://gitlab-mattermost.vagrant.local

root/5iveL!fe
(@see https://about.gitlab.com/downloads/#centos7)

### mattermost

http://gitlab-mattermost.vagrant.local:9999

