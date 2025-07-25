defmodule Google.Cloud.Aiplatform.V1beta1.ReservationAffinity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReservationAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reservation_affinity_type, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ReservationAffinity.Type,
    json_name: "reservationAffinityType",
    enum: true,
    deprecated: false

  field :key, 2, type: :string, deprecated: false
  field :values, 3, repeated: true, type: :string, deprecated: false
end
