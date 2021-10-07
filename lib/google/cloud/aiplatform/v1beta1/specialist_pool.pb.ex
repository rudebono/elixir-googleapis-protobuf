defmodule Google.Cloud.Aiplatform.V1beta1.SpecialistPool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          specialist_managers_count: integer,
          specialist_manager_emails: [String.t()],
          pending_data_labeling_jobs: [String.t()],
          specialist_worker_emails: [String.t()]
        }

  defstruct [
    :name,
    :display_name,
    :specialist_managers_count,
    :specialist_manager_emails,
    :pending_data_labeling_jobs,
    :specialist_worker_emails
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :specialist_managers_count, 3, type: :int32
  field :specialist_manager_emails, 4, repeated: true, type: :string
  field :pending_data_labeling_jobs, 5, repeated: true, type: :string
  field :specialist_worker_emails, 7, repeated: true, type: :string
end
