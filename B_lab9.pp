group { "accounting":,
		ensure => "present",
		gid => "2000",
	}
group { "sales":,
		ensure => "present",
		gid => "2002",
	}
group { "managers":,
		ensure => "present",
		gid => "2001",
	}
group { "html":
	ensure => "present",
	gid => "3000",
	}
group { "mscott":
			ensure => 'present',
	 		gid => '1001',
	   	}
file { '/home/mscott':
			ensure => "directory",
			owner => 'mscott',
			group => 'mscott',
			mode => '2700',
	   	}
user { "mscott":
			uid => "1001",
			ensure => present,
			comment => "Michael Scott",
			gid => "1001",
			groups => ["managers"],
			shell => "/bin/bash",
			home => "/home/mscott",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 0':
			command => "cp -r /etc/skel/. /home/mscott",
			path => "/usr/bin:/bin/",
		}
group { "dschrute":
			ensure => 'present',
	 		gid => '1003',
	   	}
file { '/home/dschrute':
			ensure => "directory",
			owner => 'dschrute',
			group => 'dschrute',
			mode => '2700',
	   	}
user { "dschrute":
			uid => "1003",
			ensure => present,
			comment => "Dwight Schrute",
			gid => "1003",
			groups => ["managers"],
			shell => "/bin/bash",
			home => "/home/dschrute",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 1':
			command => "cp -r /etc/skel/. /home/dschrute",
			path => "/usr/bin:/bin/",
		}
group { "jhalpert":
			ensure => 'present',
	 		gid => '1005',
	   	}
file { '/home/jhalpert':
			ensure => "directory",
			owner => 'jhalpert',
			group => 'jhalpert',
			mode => '2700',
	   	}
user { "jhalpert":
			uid => "1005",
			ensure => present,
			comment => "Jim Halpert",
			gid => "1005",
			groups => ["managers"],
			shell => "/bin/bash",
			home => "/home/jhalpert",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 2':
			command => "cp -r /etc/skel/. /home/jhalpert",
			path => "/usr/bin:/bin/",
		}
group { "pbeesly":
			ensure => 'present',
	 		gid => '1007',
	   	}
file { '/home/pbeesly':
			ensure => "directory",
			owner => 'pbeesly',
			group => 'pbeesly',
			mode => '2700',
	   	}
user { "pbeesly":
			uid => "1007",
			ensure => present,
			comment => "Pam Beesly",
			gid => "1007",
			groups => ["html"],
			shell => "/bin/bash",
			home => "/home/pbeesly",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	    	}
exec { 'run copy command 3':
			command => "cp -r /etc/skel/. /home/pbeesly",
			path => "/usr/bin:/bin/",
		}
group { "abernard":
			ensure => 'present',
	 		gid => '1009',
	   	}
file { '/home/abernard':
			ensure => "directory",
			owner => 'abernard',
			group => 'abernard',
			mode => '2700',
	   	}
user { "abernard":
			uid => "1009",
			ensure => present,
			comment => "Andy Bernard",
			gid => "1009",
			groups => ["sales","html"],
			shell => "/bin/bash",
			home => "/home/abernard",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 4':
			command => "cp -r /etc/skel/. /home/abernard",
			path => "/usr/bin:/bin/",
		}
group { "amartin":
			ensure => 'present',
	 		gid => '1011',
	   	}
file { '/home/amartin':
			ensure => "directory",
			owner => 'amartin',
			group => 'amartin',
			mode => '2700',
	   	}
user { "amartin":
			uid => "1011",
			ensure => present,
			comment => "Angela Martin",
			gid => "1011",
			groups => ["accounting"],
			shell => "/bin/bash",
			home => "/home/amartin",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 5':
			command => "cp -r /etc/skel/. /home/amartin",
			path => "/usr/bin:/bin/",
		}
group { "kkapoor":
			ensure => 'present',
	 		gid => '1013',
	   	}
file { '/home/kkapoor':
			ensure => "directory",
			owner => 'kkapoor',
			group => 'kkapoor',
			mode => '2700',
	   	}
user { "kkapoor":
			uid => "1013",
			ensure => present,
			comment => "Kelly Kapoor",
			gid => "1013",
			groups => ["html"],
			shell => "/bin/bash",
			home => "/home/kkapoor",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	    	}
exec { 'run copy command 6':
			command => "cp -r /etc/skel/. /home/kkapoor",
			path => "/usr/bin:/bin/",
		}
group { "omartinez":
			ensure => 'present',
	 		gid => '1015',
	   	}
file { '/home/omartinez':
			ensure => "directory",
			owner => 'omartinez',
			group => 'omartinez',
			mode => '2700',
	   	}
user { "omartinez":
			uid => "1015",
			ensure => present,
			comment => "Oscar Martinez",
			gid => "1015",
			groups => ["accounting"],
			shell => "/bin/bash",
			home => "/home/omartinez",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 7':
			command => "cp -r /etc/skel/. /home/omartinez",
			path => "/usr/bin:/bin/",
		}
group { "dphilbin":
			ensure => 'present',
	 		gid => '1017',
	   	}
file { '/home/dphilbin':
			ensure => "directory",
			owner => 'dphilbin',
			group => 'dphilbin',
			mode => '2700',
	   	}
user { "dphilbin":
			uid => "1017",
			ensure => present,
			comment => "Darryl Philbin",
			gid => "1017",
			shell => "/bin/bash",
			home => "/home/dphilbin",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	    	}
exec { 'run copy command 8':
			command => "cp -r /etc/skel/. /home/dphilbin",
			path => "/usr/bin:/bin/",
		}
group { "tflenderson":
			ensure => 'present',
	 		gid => '1019',
	   	}
file { '/home/tflenderson':
			ensure => "directory",
			owner => 'tflenderson',
			group => 'tflenderson',
			mode => '2700',
	   	}
user { "tflenderson":
			uid => "1019",
			ensure => present,
			comment => "Toby Flenderson",
			gid => "1019",
			shell => "/bin/bash",
			home => "/home/tflenderson",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	    	}
exec { 'run copy command 9':
			command => "cp -r /etc/skel/. /home/tflenderson",
			path => "/usr/bin:/bin/",
		}
group { "kmalone":
			ensure => 'present',
	 		gid => '1021',
	   	}
file { '/home/kmalone':
			ensure => "directory",
			owner => 'kmalone',
			group => 'kmalone',
			mode => '2700',
	   	}
user { "kmalone":
			uid => "1021",
			ensure => present,
			comment => "Kevin Malone",
			gid => "1021",
			groups => ["accounting"],
			shell => "/bin/bash",
			home => "/home/kmalone",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 10':
			command => "cp -r /etc/skel/. /home/kmalone",
			path => "/usr/bin:/bin/",
		}
group { "plapin":
			ensure => 'present',
	 		gid => '1023',
	   	}
file { '/home/plapin':
			ensure => "directory",
			owner => 'plapin',
			group => 'plapin',
			mode => '2700',
	   	}
user { "plapin":
			uid => "1023",
			ensure => present,
			comment => "Phyllis lapin",
			gid => "1023",
			groups => ["sales"],
			shell => "/bin/bash",
			home => "/home/plapin",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 11':
			command => "cp -r /etc/skel/. /home/plapin",
			path => "/usr/bin:/bin/",
		}
group { "shudson":
			ensure => 'present',
	 		gid => '1025',
	   	}
file { '/home/shudson':
			ensure => "directory",
			owner => 'shudson',
			group => 'shudson',
			mode => '2700',
	   	}
user { "shudson":
			uid => "1025",
			ensure => present,
			comment => "Stanley Hudson",
			gid => "1025",
			groups => ["sales"],
			shell => "/bin/bash",
			home => "/home/shudson",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	  	}
exec { 'run copy command 12':
			command => "cp -r /etc/skel/. /home/shudson",
			path => "/usr/bin:/bin/",
		}
group { "mpalmer":
			ensure => 'present',
	 		gid => '1027',
	   	}
file { '/home/mpalmer':
			ensure => "directory",
			owner => 'mpalmer',
			group => 'mpalmer',
			mode => '2700',
	   	}
user { "mpalmer":
			uid => "1027",
			ensure => present,
			comment => "Meredith Palmer",
			gid => "1027",
			shell => "/bin/bash",
			home => "/home/mpalmer",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	    	}
exec { 'run copy command 13':
			command => "cp -r /etc/skel/. /home/mpalmer",
			path => "/usr/bin:/bin/",
		}
group { "cbratton":
			ensure => 'present',
	 		gid => '1029',
	   	}
file { '/home/cbratton':
			ensure => "directory",
			owner => 'cbratton',
			group => 'cbratton',
			mode => '2700',
	   	}
user { "cbratton":
			uid => "1029",
			ensure => present,
			comment => "Creed Bratton",
			gid => "1029",
			shell => "/bin/bash",
			home => "/home/cbratton",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	    	}
exec { 'run copy command 14':
			command => "cp -r /etc/skel/. /home/cbratton",
			path => "/usr/bin:/bin/",
		}
group { "mhussain":
			ensure => 'present',
	 		gid => '1031',
	   	}
file { '/home/mhussain':
			ensure => "directory",
			owner => 'mhussain',
			group => 'mhussain',
			mode => '2700',
	   	}
user { "mhussain":
			uid => "1031",
			ensure => present,
			comment => "Moiz Hussain",
			gid => "1031",
			shell => "/bin/bash",
			home => "/home/mhussain",
			password => '$6$somesalt$ehqiofj/OuyAYp2YkFCnrb8JdzWYz0H/ZhVng2b/iSECnJm.di4eaS87uE0CVl.wq5P5nShI2p6x47Tcu6.fY0',
	    	}
exec { 'run copy command 15':
			command => "cp -r /etc/skel/. /home/mhussain",
			path => "/usr/bin:/bin/",
		}
#group { "html":
#	ensure => "present",
#	gid => "3000",
#	}
#user { "pbeesly":
#	groups => ["html"],
#	}
#user { "kkapoor":
#	groups => ["html"],
#	}
#user { "abernard":
#	groups => ["html"],
#	}
file { '/var/www/html':
	ensure => "directory",
	owner => 'root',
	group => 'html',
	mode => '2770',
	}
class { 'sudo': }
sudo::conf {
	'html':
	content => '%html ALL=NOPASSWD: /usr/sbin/service httpd restart',
	}
sudo::conf {
	'dschrute':
	content => 'dschrute ALL=NOPASSWD: ALL',
	}
sudo::conf {
	'mscott':
	content => 'mscott ALL=NOPASSWD: /sbin/shutdown -P +120',
	}	
sudo::conf {
	'mscotty':
	content => 'mscott ALL=NOPASSWD: /sbin/shutdown -c',
	}
file_line { 'user access':
	path => '/etc/security/access.conf',
	line => '- : ALL EXCEPT root mscott dschrute kkapoor pbeesly abernard: ALL',
	}	
class { 'passwd':
        minlen => '10'
        dcredit => '-2'
        ucredit => '-2'
        ocredit => '-1'
        minclass => '3'
}

network::if::dynamic {'eno16780032':
	ensure => 'up',
	bootproto => 'dhcp',
	name => 'eno16780032',
	}
cron { "rsync":
	ensure => present,
	command => 'rsync -av /var/www/ root@100.64.5.5:/var/',
	user => 'root',
	minute => 1
	}

class my_fw::machineBF {
        Firewall {
                require => undef,
                }
        firewall {'000 accept all connections':
                chain => 'INPUT',
                proto => 'all',
                state => ['ESTABLISHED', 'RELATED'],
                action => 'accept',
                }
		firewall {'001 accept on loopback':
                chain => 'INPUT',
                proto => 'all',
				iniface  => 'lo',
                action => 'accept',
                }
		firewall { '002 icmp echo-request':
				chain => 'INPUT',
				proto => 'icmp',
				icmp  => 'echo-request',
				action => 'accept',
				}
		firewall { '003 icmp echo-reply':
				chain => 'INPUT',
				proto => 'icmp',
				icmp  => 'echo-reply',
				action => 'accept',
				}  
		firewall { '004 icmp time-exceeded':
				chain => 'INPUT',
				proto => 'icmp',
				icmp  => 'time-exceeded',
				action => 'accept',
				} 		
		firewall { '005 icmp destination-unreachable':
				chain => 'INPUT',
				proto => 'icmp',
				icmp  => 'destination-unreachable',
				action => 'accept',
				}  
		firewall { '006 Allow inbound SSH':
			chain => 'INPUT',
			state => 'NEW',
			dport  => '22',
			proto => tcp,
			action => accept,
			source => '100.64.0.0/16',
				}

		firewall { '007 Allow inbound SSH':
			chain => 'INPUT',
			state => 'NEW',
			dport  => '22',
			proto => tcp,
			action => accept,
			source => '100.64.5.0/24',
				}
		firewall { '008 Allow inbound SSH':
			chain => 'INPUT',
			state => 'NEW',
			dport  => '22',
			proto => tcp,
			action => accept,
			source => '100.64.254.0/24',
				}
		firewall { '009 Allow inbound SSH':
			chain => 'INPUT',
			state => 'NEW',
			dport  => '22',
			proto => tcp,
			action => accept,
			source => '10.21.32.0/24',
				}
	firewall { '010 accept http':
			chain => 'INPUT',
			state => 'NEW',
			action => 'accept',
			proto => 'tcp',
			dport => ['80'],
			}
	firewall { '011 accept https':
			chain => 'INPUT',
			state => 'NEW',
			action => 'accept',
			proto => 'tcp',
			dport => ['443'],
			}
	Firewallchain {
                ensure => present,
                policy => 'drop',
                before => undef,
                }
				
				
firewallchain { 'INPUT:filter:IPv4': }
firewallchain { 'FORWARD:filter:IPv4': }
}
Firewall {
        require => Class['my_fw::machineBF'],
        }
class { ['my_fw::machineBF']: }
class { 'firewall': }
