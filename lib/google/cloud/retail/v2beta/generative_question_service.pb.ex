defmodule Google.Cloud.Retail.V2beta.UpdateGenerativeQuestionsFeatureConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generative_questions_feature_config, 2,
    type: Google.Cloud.Retail.V2beta.GenerativeQuestionsFeatureConfig,
    json_name: "generativeQuestionsFeatureConfig",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.GetGenerativeQuestionsFeatureConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ListGenerativeQuestionConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ListGenerativeQuestionConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generative_question_configs, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.GenerativeQuestionConfig,
    json_name: "generativeQuestionConfigs"
end

defmodule Google.Cloud.Retail.V2beta.UpdateGenerativeQuestionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generative_question_config, 3,
    type: Google.Cloud.Retail.V2beta.GenerativeQuestionConfig,
    json_name: "generativeQuestionConfig",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.BatchUpdateGenerativeQuestionConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.UpdateGenerativeQuestionConfigRequest,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.BatchUpdateGenerativeQuestionConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generative_question_configs, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.GenerativeQuestionConfig,
    json_name: "generativeQuestionConfigs",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.GenerativeQuestionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2beta.GenerativeQuestionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :UpdateGenerativeQuestionsFeatureConfig,
      Google.Cloud.Retail.V2beta.UpdateGenerativeQuestionsFeatureConfigRequest,
      Google.Cloud.Retail.V2beta.GenerativeQuestionsFeatureConfig

  rpc :GetGenerativeQuestionsFeatureConfig,
      Google.Cloud.Retail.V2beta.GetGenerativeQuestionsFeatureConfigRequest,
      Google.Cloud.Retail.V2beta.GenerativeQuestionsFeatureConfig

  rpc :ListGenerativeQuestionConfigs,
      Google.Cloud.Retail.V2beta.ListGenerativeQuestionConfigsRequest,
      Google.Cloud.Retail.V2beta.ListGenerativeQuestionConfigsResponse

  rpc :UpdateGenerativeQuestionConfig,
      Google.Cloud.Retail.V2beta.UpdateGenerativeQuestionConfigRequest,
      Google.Cloud.Retail.V2beta.GenerativeQuestionConfig

  rpc :BatchUpdateGenerativeQuestionConfigs,
      Google.Cloud.Retail.V2beta.BatchUpdateGenerativeQuestionConfigsRequest,
      Google.Cloud.Retail.V2beta.BatchUpdateGenerativeQuestionConfigsResponse
end

defmodule Google.Cloud.Retail.V2beta.GenerativeQuestionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.GenerativeQuestionService.Service
end
