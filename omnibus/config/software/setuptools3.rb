name "setuptools3"
default_version "40.9.0"
skip_transitive_dependency_licensing true

dependency "python3"

relative_path "setuptools-#{version}"

source :url => "https://github.com/pypa/setuptools/archive/v#{version}.tar.gz",
       :sha256 => "9ef6623c057d6e46ada8156bb48dc72ef6dbe721768720cc66966cca4097061c",
       :extract => :seven_zip

build do
  if ohai["platform"] == "windows"
    python_bin = "#{windows_safe_path(python_3_embedded)}\\python.exe"
    python_prefix = "#{windows_safe_path(python_3_embedded)}"
  else
    python_bin = "#{install_dir}/embedded/bin/python3"
    python_prefix = "#{install_dir}/embedded"
  end

  ship_license "PSFL"
  command "#{python_bin} bootstrap.py"
  command "#{python_bin} setup.py install --prefix=#{python_prefix}"
end
