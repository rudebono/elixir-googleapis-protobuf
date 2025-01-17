defmodule Google.Maps.Routing.V2.Maneuver do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MANEUVER_UNSPECIFIED, 0
  field :TURN_SLIGHT_LEFT, 1
  field :TURN_SHARP_LEFT, 2
  field :UTURN_LEFT, 3
  field :TURN_LEFT, 4
  field :TURN_SLIGHT_RIGHT, 5
  field :TURN_SHARP_RIGHT, 6
  field :UTURN_RIGHT, 7
  field :TURN_RIGHT, 8
  field :STRAIGHT, 9
  field :RAMP_LEFT, 10
  field :RAMP_RIGHT, 11
  field :MERGE, 12
  field :FORK_LEFT, 13
  field :FORK_RIGHT, 14
  field :FERRY, 15
  field :FERRY_TRAIN, 16
  field :ROUNDABOUT_LEFT, 17
  field :ROUNDABOUT_RIGHT, 18
  field :DEPART, 19
  field :NAME_CHANGE, 20
end
