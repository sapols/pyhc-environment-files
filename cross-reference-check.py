def list_of_packages(filename):
    # list of packages
    with open(filename) as f:
        packages = f.read().splitlines()

    packages = list(map(lambda s: s.replace("#", '').strip().split('=')[0].split('>')[0], packages))
    return packages

file_reqirements = 'pyhc-requirements.txt'
file_packages = 'pyhc-packages-requirements.txt'

pyhc_packages = list_of_packages(file_packages)

# special case for Kamodo on git, simply remove it.
pyhc_packages = [package for package in pyhc_packages if ".git" not in package]

bare_packages = list_of_packages(file_reqirements)

# overlap
overlap = set(bare_packages).intersection(pyhc_packages)

print(overlap)
