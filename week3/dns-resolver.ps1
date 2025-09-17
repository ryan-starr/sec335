param($network, $server)
for ($i = 0; $i -lt 255; $i++) {
  $hostname = "$network.$i"
  Resolve-DnsName -Name $hostname -Server $server -ErrorAction Ignore
}
