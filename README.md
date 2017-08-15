# ansible-role-vagrant-base [![Build Status][img-build-status]][build-status]

A simple, standardized Vagrant environment.

Available on Ansible Galaxy at [`naftulikay.vagrant-base`][galaxy].

## Requirements

RHEL 7, Ubuntu 16.04, or Ubuntu 14.04.

## Role Variables

<dl>
 <dt><code>vagrant_user</code></dt>
 <dd>The vagrant user, by default <code>vagrant</code>.</dd>
 <dt><code>vagrant_init_dir</code></dt>
 <dd>The directory to automatically change into during login. Defaults to <code>/vagrant</code>.</dd>
</dl>

## Dependencies

[`naftulikay.time`][time]: Time synchronization.

## License

MIT

 [build-status]: https://travis-ci.org/naftulikay/ansible-role-vagrant-base
 [img-build-status]: https://travis-ci.org/naftulikay/ansible-role-vagrant-base.svg?branch=master
 [galaxy]: https://galaxy.ansible.com/naftulikay/vagrant-base/
 [time]: https://galaxy.ansible.com/naftulikay/time/
