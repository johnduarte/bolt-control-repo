plan acme::configure (
  TargetSpec $targets,
  Boolean    $noop = false
) {
  # Install Puppet Agent
  $targets.apply_prep

  # Run Puppet on several targets in parallel
  $apply_result = apply($targets, '_noop' => $noop, '_catch_errors' => true) {
    $classes = lookup('classes', Optional[Array[String]], 'first', undef)
    if $classes {
      $classes.each |$c| {
        include $c
      }
    }
  }

  # Sometimes Puppet run may fail so early that there's no output, for
  # example if a suitable provider can't be found for a resource.
  # In that case you can uncomment this to print the apply result and
  # figure out what went wrong.
  #out::message($apply_result)
}
