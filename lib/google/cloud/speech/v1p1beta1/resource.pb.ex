defmodule Google.Cloud.Speech.V1p1beta1.CustomClass.ClassItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct [:value]

  field :value, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.CustomClass do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          custom_class_id: String.t(),
          items: [Google.Cloud.Speech.V1p1beta1.CustomClass.ClassItem.t()]
        }

  defstruct [:name, :custom_class_id, :items]

  field :name, 1, type: :string
  field :custom_class_id, 2, type: :string, json_name: "customClassId"
  field :items, 3, repeated: true, type: Google.Cloud.Speech.V1p1beta1.CustomClass.ClassItem

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.PhraseSet.Phrase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          boost: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:value, :boost]

  field :value, 1, type: :string
  field :boost, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.PhraseSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          phrases: [Google.Cloud.Speech.V1p1beta1.PhraseSet.Phrase.t()],
          boost: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:name, :phrases, :boost]

  field :name, 1, type: :string
  field :phrases, 2, repeated: true, type: Google.Cloud.Speech.V1p1beta1.PhraseSet.Phrase
  field :boost, 4, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.SpeechAdaptation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrase_sets: [Google.Cloud.Speech.V1p1beta1.PhraseSet.t()],
          phrase_set_references: [String.t()],
          custom_classes: [Google.Cloud.Speech.V1p1beta1.CustomClass.t()]
        }

  defstruct [:phrase_sets, :phrase_set_references, :custom_classes]

  field :phrase_sets, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.PhraseSet,
    json_name: "phraseSets"

  field :phrase_set_references, 2, repeated: true, type: :string, json_name: "phraseSetReferences"

  field :custom_classes, 3,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.CustomClass,
    json_name: "customClasses"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.TranscriptNormalization.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          search: String.t(),
          replace: String.t(),
          case_sensitive: boolean
        }

  defstruct [:search, :replace, :case_sensitive]

  field :search, 1, type: :string
  field :replace, 2, type: :string
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Speech.V1p1beta1.TranscriptNormalization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Cloud.Speech.V1p1beta1.TranscriptNormalization.Entry.t()]
        }

  defstruct [:entries]

  field :entries, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.TranscriptNormalization.Entry

  def transform_module(), do: nil
end
