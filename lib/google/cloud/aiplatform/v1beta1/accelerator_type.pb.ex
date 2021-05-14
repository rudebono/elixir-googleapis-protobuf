defmodule Google.Cloud.Aiplatform.V1beta1.AcceleratorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ACCELERATOR_TYPE_UNSPECIFIED
          | :NVIDIA_TESLA_K80
          | :NVIDIA_TESLA_P100
          | :NVIDIA_TESLA_V100
          | :NVIDIA_TESLA_P4
          | :NVIDIA_TESLA_T4
          | :NVIDIA_TESLA_A100

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0

  field :NVIDIA_TESLA_K80, 1

  field :NVIDIA_TESLA_P100, 2

  field :NVIDIA_TESLA_V100, 3

  field :NVIDIA_TESLA_P4, 4

  field :NVIDIA_TESLA_T4, 5

  field :NVIDIA_TESLA_A100, 8
end
