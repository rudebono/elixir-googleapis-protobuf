defmodule Google.Monitoring.V3.NotificationChannel.VerificationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VERIFICATION_STATUS_UNSPECIFIED | :UNVERIFIED | :VERIFIED

  field :VERIFICATION_STATUS_UNSPECIFIED, 0
  field :UNVERIFIED, 1
  field :VERIFIED, 2
end

defmodule Google.Monitoring.V3.NotificationChannelDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          display_name: String.t(),
          description: String.t(),
          labels: [Google.Api.LabelDescriptor.t()],
          supported_tiers: [Google.Monitoring.V3.ServiceTier.t()],
          launch_stage: Google.Api.LaunchStage.t()
        }

  defstruct [:name, :type, :display_name, :description, :labels, :supported_tiers, :launch_stage]

  field :name, 6, type: :string
  field :type, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :labels, 4, repeated: true, type: Google.Api.LabelDescriptor

  field :supported_tiers, 5,
    repeated: true,
    type: Google.Monitoring.V3.ServiceTier,
    deprecated: true,
    enum: true,
    json_name: "supportedTiers"

  field :launch_stage, 7, type: Google.Api.LaunchStage, enum: true, json_name: "launchStage"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.NotificationChannel.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.NotificationChannel.UserLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.NotificationChannel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          labels: %{String.t() => String.t()},
          user_labels: %{String.t() => String.t()},
          verification_status: Google.Monitoring.V3.NotificationChannel.VerificationStatus.t(),
          enabled: Google.Protobuf.BoolValue.t() | nil,
          creation_record: Google.Monitoring.V3.MutationRecord.t() | nil,
          mutation_records: [Google.Monitoring.V3.MutationRecord.t()]
        }

  defstruct [
    :type,
    :name,
    :display_name,
    :description,
    :labels,
    :user_labels,
    :verification_status,
    :enabled,
    :creation_record,
    :mutation_records
  ]

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
    enum: true,
    json_name: "verificationStatus"

  field :enabled, 11, type: Google.Protobuf.BoolValue

  field :creation_record, 12,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "creationRecord"

  field :mutation_records, 13,
    repeated: true,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "mutationRecords"

  def transform_module(), do: nil
end
