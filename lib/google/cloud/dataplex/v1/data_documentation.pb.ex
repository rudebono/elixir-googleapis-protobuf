defmodule Google.Cloud.Dataplex.V1.DataDocumentationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataplex.V1.DataDocumentationResult.TableResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :overview, 2, type: :string, deprecated: false

  field :schema, 3,
    type: Google.Cloud.Dataplex.V1.DataDocumentationResult.Schema,
    deprecated: false

  field :queries, 4,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataDocumentationResult.Query,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDocumentationResult.Query do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sql, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDocumentationResult.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fields, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataDocumentationResult.Field,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDocumentationResult.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :fields, 3,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataDocumentationResult.Field,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDocumentationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :result, 0

  field :table_result, 8,
    type: Google.Cloud.Dataplex.V1.DataDocumentationResult.TableResult,
    json_name: "tableResult",
    oneof: 0,
    deprecated: false
end
