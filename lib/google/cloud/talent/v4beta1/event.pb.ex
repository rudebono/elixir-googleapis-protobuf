defmodule Google.Cloud.Talent.V4beta1.JobEvent.JobEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :JOB_EVENT_TYPE_UNSPECIFIED
          | :IMPRESSION
          | :VIEW
          | :VIEW_REDIRECT
          | :APPLICATION_START
          | :APPLICATION_FINISH
          | :APPLICATION_QUICK_SUBMISSION
          | :APPLICATION_REDIRECT
          | :APPLICATION_START_FROM_SEARCH
          | :APPLICATION_REDIRECT_FROM_SEARCH
          | :APPLICATION_COMPANY_SUBMIT
          | :BOOKMARK
          | :NOTIFICATION
          | :HIRED
          | :SENT_CV
          | :INTERVIEW_GRANTED

  field :JOB_EVENT_TYPE_UNSPECIFIED, 0
  field :IMPRESSION, 1
  field :VIEW, 2
  field :VIEW_REDIRECT, 3
  field :APPLICATION_START, 4
  field :APPLICATION_FINISH, 5
  field :APPLICATION_QUICK_SUBMISSION, 6
  field :APPLICATION_REDIRECT, 7
  field :APPLICATION_START_FROM_SEARCH, 8
  field :APPLICATION_REDIRECT_FROM_SEARCH, 9
  field :APPLICATION_COMPANY_SUBMIT, 10
  field :BOOKMARK, 11
  field :NOTIFICATION, 12
  field :HIRED, 13
  field :SENT_CV, 14
  field :INTERVIEW_GRANTED, 15
end

defmodule Google.Cloud.Talent.V4beta1.ProfileEvent.ProfileEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PROFILE_EVENT_TYPE_UNSPECIFIED | :IMPRESSION | :VIEW | :BOOKMARK

  field :PROFILE_EVENT_TYPE_UNSPECIFIED, 0
  field :IMPRESSION, 1
  field :VIEW, 2
  field :BOOKMARK, 3
end

defmodule Google.Cloud.Talent.V4beta1.ClientEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event:
            {:job_event, Google.Cloud.Talent.V4beta1.JobEvent.t() | nil}
            | {:profile_event, Google.Cloud.Talent.V4beta1.ProfileEvent.t() | nil},
          request_id: String.t(),
          event_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          event_notes: String.t()
        }

  defstruct [:event, :request_id, :event_id, :create_time, :event_notes]

  oneof :event, 0

  field :request_id, 1, type: :string, json_name: "requestId"
  field :event_id, 2, type: :string, json_name: "eventId"
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :job_event, 5, type: Google.Cloud.Talent.V4beta1.JobEvent, json_name: "jobEvent", oneof: 0

  field :profile_event, 6,
    type: Google.Cloud.Talent.V4beta1.ProfileEvent,
    json_name: "profileEvent",
    oneof: 0

  field :event_notes, 9, type: :string, json_name: "eventNotes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.JobEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Talent.V4beta1.JobEvent.JobEventType.t(),
          jobs: [String.t()],
          profile: String.t()
        }

  defstruct [:type, :jobs, :profile]

  field :type, 1, type: Google.Cloud.Talent.V4beta1.JobEvent.JobEventType, enum: true
  field :jobs, 2, repeated: true, type: :string
  field :profile, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.ProfileEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Talent.V4beta1.ProfileEvent.ProfileEventType.t(),
          profiles: [String.t()],
          jobs: [String.t()]
        }

  defstruct [:type, :profiles, :jobs]

  field :type, 1, type: Google.Cloud.Talent.V4beta1.ProfileEvent.ProfileEventType, enum: true
  field :profiles, 2, repeated: true, type: :string
  field :jobs, 6, repeated: true, type: :string

  def transform_module(), do: nil
end
