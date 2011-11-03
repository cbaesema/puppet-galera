# nodes
$cluster_name = 'geloet'

node /db01/ {
    class { 'galera' :
        cluster_name => $cluster_name
    }
}

node /db0([2-9])/ {
    $master_ip = '33.33.33.11'
    class { 'galera' :
        cluster_name => $cluster_name,
        master_ip    => $master_ip
    }
}

