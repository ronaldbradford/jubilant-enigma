#!/usr/bin/env bats

@test "bats is install" {
  command -v bats
}

@test "bats is bats-core version" {
  run bats --version
  [ "${status}" -eq 0 ]
  [ "${output}" = "Bats 0.4.0" ]
}
