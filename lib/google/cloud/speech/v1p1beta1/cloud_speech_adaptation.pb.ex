defmodule Google.Cloud.Speech.V1p1beta1.CreatePhraseSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          phrase_set_id: String.t(),
          phrase_set: Google.Cloud.Speech.V1p1beta1.PhraseSet.t() | nil
        }

  defstruct [:parent, :phrase_set_id, :phrase_set]

  field :parent, 1, type: :string
  field :phrase_set_id, 2, type: :string, json_name: "phraseSetId"
  field :phrase_set, 3, type: Google.Cloud.Speech.V1p1beta1.PhraseSet, json_name: "phraseSet"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.UpdatePhraseSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrase_set: Google.Cloud.Speech.V1p1beta1.PhraseSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:phrase_set, :update_mask]

  field :phrase_set, 1, type: Google.Cloud.Speech.V1p1beta1.PhraseSet, json_name: "phraseSet"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.GetPhraseSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.ListPhraseSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.ListPhraseSetResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrase_sets: [Google.Cloud.Speech.V1p1beta1.PhraseSet.t()],
          next_page_token: String.t()
        }

  defstruct [:phrase_sets, :next_page_token]

  field :phrase_sets, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.PhraseSet,
    json_name: "phraseSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.DeletePhraseSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.CreateCustomClassRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          custom_class_id: String.t(),
          custom_class: Google.Cloud.Speech.V1p1beta1.CustomClass.t() | nil
        }

  defstruct [:parent, :custom_class_id, :custom_class]

  field :parent, 1, type: :string
  field :custom_class_id, 2, type: :string, json_name: "customClassId"

  field :custom_class, 3,
    type: Google.Cloud.Speech.V1p1beta1.CustomClass,
    json_name: "customClass"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.UpdateCustomClassRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_class: Google.Cloud.Speech.V1p1beta1.CustomClass.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:custom_class, :update_mask]

  field :custom_class, 1,
    type: Google.Cloud.Speech.V1p1beta1.CustomClass,
    json_name: "customClass"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.GetCustomClassRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.ListCustomClassesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.ListCustomClassesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_classes: [Google.Cloud.Speech.V1p1beta1.CustomClass.t()],
          next_page_token: String.t()
        }

  defstruct [:custom_classes, :next_page_token]

  field :custom_classes, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.CustomClass,
    json_name: "customClasses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.DeleteCustomClassRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.Adaptation.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.speech.v1p1beta1.Adaptation"

  rpc :CreatePhraseSet,
      Google.Cloud.Speech.V1p1beta1.CreatePhraseSetRequest,
      Google.Cloud.Speech.V1p1beta1.PhraseSet

  rpc :GetPhraseSet,
      Google.Cloud.Speech.V1p1beta1.GetPhraseSetRequest,
      Google.Cloud.Speech.V1p1beta1.PhraseSet

  rpc :ListPhraseSet,
      Google.Cloud.Speech.V1p1beta1.ListPhraseSetRequest,
      Google.Cloud.Speech.V1p1beta1.ListPhraseSetResponse

  rpc :UpdatePhraseSet,
      Google.Cloud.Speech.V1p1beta1.UpdatePhraseSetRequest,
      Google.Cloud.Speech.V1p1beta1.PhraseSet

  rpc :DeletePhraseSet,
      Google.Cloud.Speech.V1p1beta1.DeletePhraseSetRequest,
      Google.Protobuf.Empty

  rpc :CreateCustomClass,
      Google.Cloud.Speech.V1p1beta1.CreateCustomClassRequest,
      Google.Cloud.Speech.V1p1beta1.CustomClass

  rpc :GetCustomClass,
      Google.Cloud.Speech.V1p1beta1.GetCustomClassRequest,
      Google.Cloud.Speech.V1p1beta1.CustomClass

  rpc :ListCustomClasses,
      Google.Cloud.Speech.V1p1beta1.ListCustomClassesRequest,
      Google.Cloud.Speech.V1p1beta1.ListCustomClassesResponse

  rpc :UpdateCustomClass,
      Google.Cloud.Speech.V1p1beta1.UpdateCustomClassRequest,
      Google.Cloud.Speech.V1p1beta1.CustomClass

  rpc :DeleteCustomClass,
      Google.Cloud.Speech.V1p1beta1.DeleteCustomClassRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Speech.V1p1beta1.Adaptation.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Speech.V1p1beta1.Adaptation.Service
end
