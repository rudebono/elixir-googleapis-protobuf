defmodule Grafeas.V1.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEVERITY_UNSPECIFIED | :MINIMAL | :LOW | :MEDIUM | :HIGH | :CRITICAL

  field :SEVERITY_UNSPECIFIED, 0
  field :MINIMAL, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
  field :CRITICAL, 5
end
