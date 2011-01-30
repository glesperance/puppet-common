import "classes/*.pp"
import "classes/packages/*.pp"
import "definitions/*.pp"
import "definitions/archive/*.pp"
import "definitions/concatenated/*.pp"
import "definitions/modules/*.pp"

# common/manifests/init.pp - Define common infrastructure for modules
# Copyright (C) 2007 David Schmitt <david@schmitt.edv-bus.at>
# See LICENSE for the full license granted to you.

file {
	# Module programmers can use /var/lib/puppet/modules/$modulename to save
	# module-local data, e.g. for constructing config files
	"/var/lib/puppet/modules":
		ensure => directory,
		source => "puppet:///modules/common/modules/",
		ignore => ".ignore",
		recurse => true, purge => true, force => true,
		mode => 0755, owner => root, group => 0;
}
