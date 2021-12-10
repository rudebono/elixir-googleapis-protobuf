defmodule Google.Cloud.Talent.V4beta1.Application.ApplicationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :APPLICATION_STATE_UNSPECIFIED
          | :IN_PROGRESS
          | :CANDIDATE_WITHDREW
          | :EMPLOYER_WITHDREW
          | :COMPLETED
          | :CLOSED

  field :APPLICATION_STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :CANDIDATE_WITHDREW, 2
  field :EMPLOYER_WITHDREW, 3
  field :COMPLETED, 4
  field :CLOSED, 5
end
defmodule Google.Cloud.Talent.V4beta1.Application.ApplicationStage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :APPLICATION_STAGE_UNSPECIFIED
          | :NEW
          | :SCREEN
          | :HIRING_MANAGER_REVIEW
          | :INTERVIEW
          | :OFFER_EXTENDED
          | :OFFER_ACCEPTED
          | :STARTED

  field :APPLICATION_STAGE_UNSPECIFIED, 0
  field :NEW, 1
  field :SCREEN, 2
  field :HIRING_MANAGER_REVIEW, 3
  field :INTERVIEW, 4
  field :OFFER_EXTENDED, 5
  field :OFFER_ACCEPTED, 6
  field :STARTED, 7
end
defmodule Google.Cloud.Talent.V4beta1.Application do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          external_id: String.t(),
          profile: String.t(),
          job: String.t(),
          company: String.t(),
          application_date: Google.Type.Date.t() | nil,
          stage: Google.Cloud.Talent.V4beta1.Application.ApplicationStage.t(),
          state: Google.Cloud.Talent.V4beta1.Application.ApplicationState.t(),
          interviews: [Google.Cloud.Talent.V4beta1.Interview.t()],
          referral: Google.Protobuf.BoolValue.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          outcome_notes: String.t(),
          outcome: Google.Cloud.Talent.V4beta1.Outcome.t(),
          is_match: Google.Protobuf.BoolValue.t() | nil,
          job_title_snippet: String.t()
        }

  defstruct name: "",
            external_id: "",
            profile: "",
            job: "",
            company: "",
            application_date: nil,
            stage: :APPLICATION_STAGE_UNSPECIFIED,
            state: :APPLICATION_STATE_UNSPECIFIED,
            interviews: [],
            referral: nil,
            create_time: nil,
            update_time: nil,
            outcome_notes: "",
            outcome: :OUTCOME_UNSPECIFIED,
            is_match: nil,
            job_title_snippet: ""

  field :name, 1, type: :string
  field :external_id, 31, type: :string, json_name: "externalId", deprecated: false
  field :profile, 2, type: :string, deprecated: false
  field :job, 4, type: :string, deprecated: false
  field :company, 5, type: :string, deprecated: false
  field :application_date, 7, type: Google.Type.Date, json_name: "applicationDate"

  field :stage, 11,
    type: Google.Cloud.Talent.V4beta1.Application.ApplicationStage,
    enum: true,
    deprecated: false

  field :state, 13, type: Google.Cloud.Talent.V4beta1.Application.ApplicationState, enum: true
  field :interviews, 16, repeated: true, type: Google.Cloud.Talent.V4beta1.Interview
  field :referral, 18, type: Google.Protobuf.BoolValue

  field :create_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 20, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :outcome_notes, 21, type: :string, json_name: "outcomeNotes"
  field :outcome, 22, type: Google.Cloud.Talent.V4beta1.Outcome, enum: true
  field :is_match, 28, type: Google.Protobuf.BoolValue, json_name: "isMatch", deprecated: false
  field :job_title_snippet, 29, type: :string, json_name: "jobTitleSnippet", deprecated: false
end
