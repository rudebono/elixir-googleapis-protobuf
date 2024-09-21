defmodule Google.Monitoring.V3.NotificationChannel.VerificationStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VERIFICATION_STATUS_UNSPECIFIED, 0
  field :UNVERIFIED, 1
  field :VERIFIED, 2
end

defmodule Google.Monitoring.V3.NotificationChannelDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 6, type: :string
  field :type, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :labels, 4, repeated: true, type: Google.Api.LabelDescriptor

  field :supported_tiers, 5,
    repeated: true,
    type: Google.Monitoring.V3.ServiceTier,
    json_name: "supportedTiers",
    enum: true,
    deprecated: true

  field :launch_stage, 7, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true
end

defmodule Google.Monitoring.V3.NotificationChannel.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.NotificationChannel.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.NotificationChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: :string
  field :name, 6, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string

  field :labels, 5,
    repeated: true,
    type: Google.Monitoring.V3.NotificationChannel.LabelsEntry,
    map: true

  field :user_labels, 8,
    repeated: true,
    type: Google.Monitoring.V3.NotificationChannel.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :verification_status, 9,
    type: Google.Monitoring.V3.NotificationChannel.VerificationStatus,
    json_name: "verificationStatus",
    enum: true

  field :enabled, 11, type: Google.Protobuf.BoolValue

  field :creation_record, 12,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "creationRecord"

  field :mutation_records, 13,
    repeated: true,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "mutationRecords"
end