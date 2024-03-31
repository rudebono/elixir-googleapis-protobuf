defmodule Google.Cloud.Aiplatform.V1.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :INTEGER, 3
  field :BOOLEAN, 4
  field :ARRAY, 5
  field :OBJECT, 6
end

defmodule Google.Cloud.Aiplatform.V1.Schema.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.Schema
end

defmodule Google.Cloud.Aiplatform.V1.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Aiplatform.V1.Type, enum: true, deprecated: false
  field :format, 7, type: :string, deprecated: false
  field :title, 24, type: :string, deprecated: false
  field :description, 8, type: :string, deprecated: false
  field :nullable, 6, type: :bool, deprecated: false
  field :default, 23, type: Google.Protobuf.Value, deprecated: false
  field :items, 2, type: Google.Cloud.Aiplatform.V1.Schema, deprecated: false
  field :min_items, 21, type: :int64, json_name: "minItems", deprecated: false
  field :max_items, 22, type: :int64, json_name: "maxItems", deprecated: false
  field :enum, 9, repeated: true, type: :string, deprecated: false

  field :properties, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Schema.PropertiesEntry,
    map: true,
    deprecated: false

  field :required, 5, repeated: true, type: :string, deprecated: false
  field :min_properties, 14, type: :int64, json_name: "minProperties", deprecated: false
  field :max_properties, 15, type: :int64, json_name: "maxProperties", deprecated: false
  field :minimum, 16, type: :double, deprecated: false
  field :maximum, 17, type: :double, deprecated: false
  field :min_length, 18, type: :int64, json_name: "minLength", deprecated: false
  field :max_length, 19, type: :int64, json_name: "maxLength", deprecated: false
  field :pattern, 20, type: :string, deprecated: false
  field :example, 4, type: Google.Protobuf.Value, deprecated: false
end