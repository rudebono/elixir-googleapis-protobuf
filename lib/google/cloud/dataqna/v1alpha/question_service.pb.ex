defmodule Google.Cloud.Dataqna.V1alpha.GetQuestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Dataqna.V1alpha.CreateQuestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :question, 2, type: Google.Cloud.Dataqna.V1alpha.Question, deprecated: false
end

defmodule Google.Cloud.Dataqna.V1alpha.ExecuteQuestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :interpretation_index, 2,
    type: :int32,
    json_name: "interpretationIndex",
    deprecated: false
end

defmodule Google.Cloud.Dataqna.V1alpha.GetUserFeedbackRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataqna.V1alpha.UpdateUserFeedbackRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :user_feedback, 1,
    type: Google.Cloud.Dataqna.V1alpha.UserFeedback,
    json_name: "userFeedback",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dataqna.V1alpha.QuestionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataqna.v1alpha.QuestionService",
    protoc_gen_elixir_version: "0.14.0"

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
