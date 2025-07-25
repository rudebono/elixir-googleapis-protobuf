defmodule Google.Cloud.Geminidataanalytics.V1beta.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :system_instruction, 1, type: :string, json_name: "systemInstruction", deprecated: false

  field :datasource_references, 7,
    type: Google.Cloud.Geminidataanalytics.V1beta.DatasourceReferences,
    json_name: "datasourceReferences",
    deprecated: false

  field :options, 3,
    type: Google.Cloud.Geminidataanalytics.V1beta.ConversationOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ConversationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chart, 1, type: Google.Cloud.Geminidataanalytics.V1beta.ChartOptions, deprecated: false

  field :analysis, 2,
    type: Google.Cloud.Geminidataanalytics.V1beta.AnalysisOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChartOptions.ImageOptions.NoImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChartOptions.ImageOptions.SvgOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChartOptions.ImageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :no_image, 1,
    type: Google.Cloud.Geminidataanalytics.V1beta.ChartOptions.ImageOptions.NoImage,
    json_name: "noImage",
    oneof: 0

  field :svg, 2,
    type: Google.Cloud.Geminidataanalytics.V1beta.ChartOptions.ImageOptions.SvgOptions,
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.ChartOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image, 1,
    type: Google.Cloud.Geminidataanalytics.V1beta.ChartOptions.ImageOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.AnalysisOptions.Python do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.AnalysisOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :python, 1,
    type: Google.Cloud.Geminidataanalytics.V1beta.AnalysisOptions.Python,
    deprecated: false
end
