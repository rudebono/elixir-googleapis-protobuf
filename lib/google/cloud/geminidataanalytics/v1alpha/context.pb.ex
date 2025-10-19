defmodule Google.Cloud.Geminidataanalytics.V1alpha.Context.SchemaRelationship.Source do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SOURCE_UNSPECIFIED, 0
  field :BIGQUERY_JOB_HISTORY, 1
  field :LLM_SUGGESTED, 2
  field :BIGQUERY_TABLE_CONSTRAINTS, 3
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Context.SchemaRelationship.SchemaPaths do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table_fqn, 1, type: :string, json_name: "tableFqn"
  field :paths, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Context.SchemaRelationship do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :left_schema_paths, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Context.SchemaRelationship.SchemaPaths,
    json_name: "leftSchemaPaths"

  field :right_schema_paths, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Context.SchemaRelationship.SchemaPaths,
    json_name: "rightSchemaPaths"

  field :sources, 3,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Context.SchemaRelationship.Source,
    enum: true

  field :confidence_score, 4, type: :float, json_name: "confidenceScore"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :system_instruction, 1, type: :string, json_name: "systemInstruction", deprecated: false

  field :datasource_references, 7,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DatasourceReferences,
    json_name: "datasourceReferences",
    deprecated: false

  field :options, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ConversationOptions,
    deprecated: false

  field :example_queries, 5,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ExampleQuery,
    json_name: "exampleQueries",
    deprecated: false

  field :glossary_terms, 8,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.GlossaryTerm,
    json_name: "glossaryTerms",
    deprecated: false

  field :schema_relationships, 9,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Context.SchemaRelationship,
    json_name: "schemaRelationships",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ExampleQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :query, 0

  field :sql_query, 101, type: :string, json_name: "sqlQuery", oneof: 0, deprecated: false

  field :natural_language_question, 1,
    type: :string,
    json_name: "naturalLanguageQuestion",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.GlossaryTerm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :labels, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ConversationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chart, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions, deprecated: false

  field :analysis, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.NoImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.SvgOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :no_image, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.NoImage,
    json_name: "noImage",
    oneof: 0

  field :svg, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.SvgOptions,
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions.Python do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :python, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions.Python,
    deprecated: false
end
