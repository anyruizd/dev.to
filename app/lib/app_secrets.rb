class AppSecrets
  def self.[](key)
    result = Vault.kv("secret").read(vault_path(key))&.data&.fetch(:value)
    result ||= ApplicationConfig[key]

    result
  end

  def self.namespace
    ENV["VAULT_ENV_NAMESPACE"]
  end

  def self.vault_path(key)
    "#{namespace}/#{key}"
  end
end
