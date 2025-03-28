defmodule Google.Cloud.Speech.V1.CreatePhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :phrase_set_id, 2, type: :string, json_name: "phraseSetId", deprecated: false

  field :phrase_set, 3,
    type: Google.Cloud.Speech.V1.PhraseSet,
    json_name: "phraseSet",
    deprecated: false
end

defmodule Google.Cloud.Speech.V1.UpdatePhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :phrase_set, 1,
    type: Google.Cloud.Speech.V1.PhraseSet,
    json_name: "phraseSet",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Speech.V1.GetPhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V1.ListPhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Speech.V1.ListPhraseSetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :phrase_sets, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1.PhraseSet,
    json_name: "phraseSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Speech.V1.DeletePhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V1.CreateCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :custom_class_id, 2, type: :string, json_name: "customClassId", deprecated: false

  field :custom_class, 3,
    type: Google.Cloud.Speech.V1.CustomClass,
    json_name: "customClass",
    deprecated: false
end

defmodule Google.Cloud.Speech.V1.UpdateCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :custom_class, 1,
    type: Google.Cloud.Speech.V1.CustomClass,
    json_name: "customClass",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Speech.V1.GetCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V1.ListCustomClassesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Speech.V1.ListCustomClassesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :custom_classes, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1.CustomClass,
    json_name: "customClasses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Speech.V1.DeleteCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V1.Adaptation.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.speech.v1.Adaptation", protoc_gen_elixir_version: "0.14.1"

  rpc :CreatePhraseSet,
      Google.Cloud.Speech.V1.CreatePhraseSetRequest,
      Google.Cloud.Speech.V1.PhraseSet

  rpc :GetPhraseSet, Google.Cloud.Speech.V1.GetPhraseSetRequest, Google.Cloud.Speech.V1.PhraseSet

  rpc :ListPhraseSet,
      Google.Cloud.Speech.V1.ListPhraseSetRequest,
      Google.Cloud.Speech.V1.ListPhraseSetResponse

  rpc :UpdatePhraseSet,
      Google.Cloud.Speech.V1.UpdatePhraseSetRequest,
      Google.Cloud.Speech.V1.PhraseSet

  rpc :DeletePhraseSet, Google.Cloud.Speech.V1.DeletePhraseSetRequest, Google.Protobuf.Empty

  rpc :CreateCustomClass,
      Google.Cloud.Speech.V1.CreateCustomClassRequest,
      Google.Cloud.Speech.V1.CustomClass

  rpc :GetCustomClass,
      Google.Cloud.Speech.V1.GetCustomClassRequest,
      Google.Cloud.Speech.V1.CustomClass

  rpc :ListCustomClasses,
      Google.Cloud.Speech.V1.ListCustomClassesRequest,
      Google.Cloud.Speech.V1.ListCustomClassesResponse

  rpc :UpdateCustomClass,
      Google.Cloud.Speech.V1.UpdateCustomClassRequest,
      Google.Cloud.Speech.V1.CustomClass

  rpc :DeleteCustomClass, Google.Cloud.Speech.V1.DeleteCustomClassRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Speech.V1.Adaptation.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Speech.V1.Adaptation.Service
end
