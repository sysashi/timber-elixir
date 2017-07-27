defmodule Timber.Contexts.SystemContext do
  @moduledoc """
  The system context tracks OS level information, such as the process ID and hostname.

  Note: This context is automatically added when each `Timber.Logentry` is created.
  There is no need to add it yourself.
  """

  @type t :: %__MODULE__{
    hostname: String.t | nil,
    pid: non_neg_integer | nil,
    process_name: String.t | nil
  }

  @type m :: %{
    hostname: String.t | nil,
    pid: String.t | nil,
    process_name: String.t | nil
  }

  defstruct [:hostname, :pid, :process_name]
end
