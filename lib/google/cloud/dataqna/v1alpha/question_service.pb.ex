defmodule Google.Cloud.Dataqna.V1alpha.GetQuestionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dataqna.V1alpha.CreateQuestionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          question: Google.Cloud.Dataqna.V1alpha.Question.t() | nil
        }

  defstruct [:parent, :question]

  field :parent, 1, type: :string
  field :question, 2, type: Google.Cloud.Dataqna.V1alpha.Question
end

defmodule Google.Cloud.Dataqna.V1alpha.ExecuteQuestionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          interpretation_index: integer
        }

  defstruct [:name, :interpretation_index]

  field :name, 1, type: :string
  field :interpretation_index, 2, type: :int32
end

defmodule Google.Cloud.Dataqna.V1alpha.GetUserFeedbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dataqna.V1alpha.UpdateUserFeedbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_feedback: Google.Cloud.Dataqna.V1alpha.UserFeedback.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:user_feedback, :update_mask]

  field :user_feedback, 1, type: Google.Cloud.Dataqna.V1alpha.UserFeedback
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dataqna.V1alpha.QuestionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataqna.v1alpha.QuestionService"

  rpc :GetQuestion,
      Google.Cloud.Dataqna.V1alpha.GetQuestionRequest,
      Google.Cloud.Dataqna.V1alpha.Question

  rpc :CreateQuestion,
      Google.Cloud.Dataqna.V1alpha.CreateQuestionRequest,
      Google.Cloud.Dataqna.V1alpha.Question

  rpc :ExecuteQuestion,
      Google.Cloud.Dataqna.V1alpha.ExecuteQuestionRequest,
      Google.Cloud.Dataqna.V1alpha.Question

  rpc :GetUserFeedback,
      Google.Cloud.Dataqna.V1alpha.GetUserFeedbackRequest,
      Google.Cloud.Dataqna.V1alpha.UserFeedback

  rpc :UpdateUserFeedback,
      Google.Cloud.Dataqna.V1alpha.UpdateUserFeedbackRequest,
      Google.Cloud.Dataqna.V1alpha.UserFeedback
end

defmodule Google.Cloud.Dataqna.V1alpha.QuestionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataqna.V1alpha.QuestionService.Service
end
