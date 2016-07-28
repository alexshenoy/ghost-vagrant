exec { "apt-get update":
       path => "/usr/bin",
}

class { 'ghost':
  include_nodejs => true,
} -> ghost::blog { 'my_blog': }
