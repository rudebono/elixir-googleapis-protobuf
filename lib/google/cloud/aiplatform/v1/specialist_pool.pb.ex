defmodule Google.Cloud.Aiplatform.V1.SpecialistPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :specialist_managers_count, 3,
    type: :int32,
    json_name: "specialistManagersCount",
    deprecated: false

  field :specialist_manager_emails, 4,
    repeated: true,
    type: :string,
    json_name: "specialistManagerEmails"

  field :pending_data_labeling_jobs, 5,
    repeated: true,
    type: :string,
    json_name: "pendingDataLabelingJobs",
    deprecated: false

  field :specialist_worker_emails, 7,
    repeated: true,
    type: :string,
    json_name: "specialistWorkerEmails"
end
