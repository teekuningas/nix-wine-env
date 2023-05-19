# Clean up tmp dir
rm -fr "$(pwd)/src/tamriel_rebuilt/tmp"

# Unarchive Tamriel_Data
tr_data_archive="$(pwd)/src/tamriel_rebuilt/Tamriel_Data_v9.7z"
tr_data_extracted="$(pwd)/src/tamriel_rebuilt/tmp"
mkdir -p $tr_data_extracted
nix shell nixpkgs/22.11#p7zip -c 7z x $tr_data_archive -o${tr_data_extracted}

# Copy it to the Data Folder
data_src="${tr_data_extracted}/00 Data Files"
data_dest="$(pwd)/data/Tamriel_Data"
mkdir -p $data_dest
cp -fr "$data_src"/* $data_dest

# Unarchive Tamriel_Rebuilt
tr_archive="$(pwd)/src/tamriel_rebuilt/Tamriel Rebuilt 22.11.7z"
tr_extracted="$(pwd)/src/tamriel_rebuilt/tmp"
mkdir -p $tr_data_extracted
nix shell nixpkgs/22.11#p7zip -c 7z x "${tr_archive}" -o${tr_extracted}

# Copy it to the Data Folder
tr_src="${tr_extracted}/00 Core"
tr_dest="$(pwd)/data/Tamriel_Rebuilt"
mkdir -p $tr_dest
cp -fr "$tr_src"/* $tr_dest

# Clean up tmp dir
rm -fr "$(pwd)/src/tamriel_rebuilt/tmp"
