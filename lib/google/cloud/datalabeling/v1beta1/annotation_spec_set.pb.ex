defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          annotation_specs: [Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t()],
          blocking_resources: [String.t()]
        }

  defstruct name: "",
            display_name: "",
            description: "",
            annotation_specs: [],
            blocking_resources: []

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :annotation_specs, 4,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpecs"

  field :blocking_resources, 5, repeated: true, type: :string, json_name: "blockingResources"
end
defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t()
        }

  defstruct display_name: "",
            description: ""

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string
end
