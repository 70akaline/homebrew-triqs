class Triqs < Formula
  desc "Toolbox for Research on Interacting Quantum Systems"
  homepage "https://triqs.github.io/triqs/2.1.x/"
  url "https://github.com/TRIQS/triqs/archive/2.1.1.tar.gz"
  sha256 "f76909c02bf306d0796297d9854ad5f1262f2cbd6b8c8521760e972dd72f9d13"
  head "https://github.com/TRIQS/triqs"

  # doi "10.1016/j.cpc.2015.04.023"
  # tag "quantumphysics"

  depends_on "cmake" => :build
  depends_on "llvm"
  depends_on "boost"
  depends_on "hdf5"
  depends_on "gmp"
  depends_on "fftw"
  depends_on "open-mpi"
  depends_on "python@2"
  depends_on "scipy"
  depends_on "numpy"
  depends_on "pkg-config" => :run

  include Language::Python::Virtualenv

  resource "backports.functools_lru_cache" do
    url "https://files.pythonhosted.org/packages/57/d4/156eb5fbb08d2e85ab0a632e2bebdad355798dece07d4752f66a8d02d1ea/backports.functools_lru_cache-1.5.tar.gz"
    sha256 "9d98697f088eb1b0fa451391f91afb5e3ebde16bbdb272819fd091151fda4f1a"
  end

  resource "Cycler" do
    url "https://files.pythonhosted.org/packages/c2/4b/137dea450d6e1e3d474e1d873cd1d4f7d3beed7e0dc973b06e8e10d32488/cycler-0.10.0.tar.gz"
    sha256 "cd7b2d1018258d7247a71425e9f26463dfb444d411c39569972f4ce586b0c9d8"
  end

  resource "kiwisolver" do
    url "https://files.pythonhosted.org/packages/31/60/494fcce70d60a598c32ee00e71542e52e27c978e5f8219fae0d4ac6e2864/kiwisolver-1.0.1.tar.gz"
    sha256 "ce3be5d520b4d2c3e5eeb4cd2ef62b9b9ab8ac6b6fedbaa0e39cdb6f50644278"
  end

  resource "matplotlib" do
    url "https://files.pythonhosted.org/packages/1e/20/2032ad99f0dfe0f60970941af36e8d0942d3713f442bb3df37ac35d67358/matplotlib-2.2.4.tar.gz"
    sha256 "029620799e581802961ac1dcff5cb5d3ee2f602e0db9c0f202a90495b37d2126"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/cf/8d/6345b4f32b37945fedc1e027e83970005fc9c699068d2f566b82826515f2/numpy-1.16.2.zip"
    sha256 "6c692e3879dde0b67a9dc78f9bfb6f61c666b4562fd8619632d7043fb5b691b0"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/cc/24/f185147523a3299a0dfbe21937d621060b3a7e98dfc672298641984769b3/pyparsing-2.2.1.tar.gz"
    sha256 "f493ee323be1e94929416b3585eefcc04943115cecbaaa35a8c86d1a2368af19"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/a0/b0/a4e3241d2dee665fea11baec21389aec6886655cd4db7647ddf96c3fad15/python-dateutil-2.7.3.tar.gz"
    sha256 "e27001de32f627c22380a688bcc43ce83504a7bc5da472209b4c70f02829f0b8"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/ca/a9/62f96decb1e309d6300ebe7eee9acfd7bccaeedd693794437005b9067b44/pytz-2018.5.tar.gz"
    sha256 "ffb9ef1de172603304d9d2819af6f5ece76f2e85ec10692a524dd876e72bf277"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "subprocess32" do
    url "https://files.pythonhosted.org/packages/c3/5f/7117737fc7114061837a4f51670d863dd7f7f9c762a6546fa8a0dcfe61c8/subprocess32-3.5.2.tar.gz"
    sha256 "eb2b989cf03ffc7166339eb34f1aa26c5ace255243337b1e22dab7caa1166687"
  end

  resource "appnope" do
    url "https://files.pythonhosted.org/packages/26/34/0f3a5efac31f27fabce64645f8c609de9d925fe2915304d1a40f544cff0e/appnope-0.1.0.tar.gz"
    sha256 "8b995ffe925347a2138d7ac0fe77155e4311a0ea6d6da4f5128fe4b3cbe5ed71"
  end

  resource "backports_abc" do
    url "https://files.pythonhosted.org/packages/68/3c/1317a9113c377d1e33711ca8de1e80afbaf4a3c950dd0edfaf61f9bfe6d8/backports_abc-0.5.tar.gz"
    sha256 "033be54514a03e255df75c5aee8f9e672f663f93abb723444caec8fe43437bde"
  end

  resource "backports.shutil_get_terminal_size" do
    url "https://files.pythonhosted.org/packages/ec/9c/368086faa9c016efce5da3e0e13ba392c9db79e3ab740b763fe28620b18b/backports.shutil_get_terminal_size-1.0.0.tar.gz"
    sha256 "713e7a8228ae80341c70586d1cc0a8caa5207346927e23d09dcbcaf18eadec80"
  end

  resource "bleach" do
    url "https://files.pythonhosted.org/packages/7a/b7/fa555afb61462b030abaf9ed1479b8ea031510f58c7706b06113be9f82ea/bleach-2.1.4.tar.gz"
    sha256 "0ee95f6167129859c5dce9b1ca291ebdb5d8cd7e382ca0e237dfd0dad63f63d8"
  end

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/7c/69/c2ce7e91c89dc073eb1aa74c0621c3eefbffe8216b3f9af9d3885265c01c/configparser-3.5.0.tar.gz"
    sha256 "5308b47021bc2340965c371f0f058cc6971a04502638d4244225c49d80db273a"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/6f/24/15a229626c775aae5806312f6bf1e2a73785be3402c0acdec5dbddd8c11e/decorator-4.3.0.tar.gz"
    sha256 "c39efa13fbdeb4506c476c9b3babf6a718da943dab7811c206005a4a956c080c"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/74/ba/4ba4e89e21b5a2e267d80736ea674609a0a33cc4435a6d748ef04f1f9374/defusedxml-0.5.0.tar.gz"
    sha256 "24d7f2f94f7f3cb6061acb215685e5125fbcdc40a857eff9de22518820b0a4f4"
  end

  resource "entrypoints" do
    url "https://files.pythonhosted.org/packages/27/e8/607697e6ab8a961fc0b141a97ea4ce72cd9c9e264adeb0669f6d194aa626/entrypoints-0.2.3.tar.gz"
    sha256 "d2d587dde06f99545fb13a383d2cd336a8ff1f359c5839ce3a64c917d10c029f"
  end

  resource "enum34" do
    url "https://files.pythonhosted.org/packages/bf/3e/31d502c25302814a7c2f1d3959d2a3b3f78e509002ba91aea64993936876/enum34-1.1.6.tar.gz"
    sha256 "8ad8c4783bf61ded74527bffb48ed9b54166685e4230386a9ed9b1279e2df5b1"
  end

  resource "functools32" do
    url "https://files.pythonhosted.org/packages/c5/60/6ac26ad05857c601308d8fb9e87fa36d0ebf889423f47c3502ef034365db/functools32-3.2.3-2.tar.gz"
    sha256 "f6253dfbe0538ad2e387bd8fdfd9293c925d63553f5813c4e587745416501e6d"
  end

  resource "futures" do
    url "https://files.pythonhosted.org/packages/1f/9e/7b2ff7e965fc654592269f2906ade1c7d705f1bf25b7d469fa153f7d19eb/futures-3.2.0.tar.gz"
    sha256 "9ec02aa7d674acb8618afb127e27fde7fc68994c0437ad759fa094a574adb265"
  end

  resource "html5lib" do
    url "https://files.pythonhosted.org/packages/85/3e/cf449cf1b5004e87510b9368e7a5f1acd8831c2d6691edd3c62a0823f98f/html5lib-1.0.1.tar.gz"
    sha256 "66cb0dcfdbbc4f9c3ba1a63fdb511ffdbd4f513b2b6d81b80cd26ce6b3fb3736"
  end

  resource "ipaddress" do
    url "https://files.pythonhosted.org/packages/97/8d/77b8cedcfbf93676148518036c6b1ce7f8e14bf07e95d7fd4ddcb8cc052f/ipaddress-1.0.22.tar.gz"
    sha256 "b146c751ea45cad6188dd6cf2d9b757f6f4f8d6ffb96a023e6f2e26eea02a72c"
  end

  resource "ipykernel" do
    url "https://files.pythonhosted.org/packages/83/2d/1e9860d470725ef22a2c06c15d082ca06d425e91eba1a1292bb0165af128/ipykernel-4.9.0.tar.gz"
    sha256 "c5a498c70f7765c34f3397cf943b069057f5bef4e0218e4cfbb733e9f38fa5fa"
  end

  resource "ipython" do
    url "https://files.pythonhosted.org/packages/41/a6/2d25314b1f9375639d8f8e0f8052e8cec5df511d3449f22c4f1c2d8cb3c6/ipython-5.8.0.tar.gz"
    sha256 "4bac649857611baaaf76bc82c173aa542f7486446c335fe1a6c05d0d491c8906"
  end

  resource "ipython_genutils" do
    url "https://files.pythonhosted.org/packages/e8/69/fbeffffc05236398ebfcfb512b6d2511c622871dca1746361006da310399/ipython_genutils-0.2.0.tar.gz"
    sha256 "eb2e116e75ecef9d4d228fdc66af54269afa26ab4463042e33785b887c628ba8"
  end

  resource "ipywidgets" do
    url "https://files.pythonhosted.org/packages/88/8d/c5d3ac1bdcd74c7327c733c9d02354ff12d7d72744f262ed1e26560962b2/ipywidgets-7.4.2.tar.gz"
    sha256 "a3e224f430163f767047ab9a042fc55adbcab0c24bbe6cf9f306c4f89fdf0ba3"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47/Jinja2-2.10.tar.gz"
    sha256 "f84be1bb0040caca4cea721fcbbbbd61f9be9464ca236387158b0feea01914a4"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/58/b9/171dbb07e18c6346090a37f03c7e74410a1a56123f847efed59af260a298/jsonschema-2.6.0.tar.gz"
    sha256 "6ff5f3180870836cae40f06fa10419f557208175f13ad7bc26caa77beb1f6e02"
  end

  resource "jupyter" do
    url "https://files.pythonhosted.org/packages/c9/a9/371d0b8fe37dd231cf4b2cff0a9f0f25e98f3a73c3771742444be27f2944/jupyter-1.0.0.tar.gz"
    sha256 "d9dc4b3318f310e34c82951ea5d6683f67bed7def4b259fafbfe4f1beb1d8e5f"
  end

  resource "jupyter-client" do
    url "https://files.pythonhosted.org/packages/4c/df/1e8df7f4de63cc667a7a9aa234539c0419513bf94ac57d36d73b3b434786/jupyter_client-5.2.3.tar.gz"
    sha256 "27befcf0446b01e29853014d6a902dd101ad7d7f94e2252b1adca17c3466b761"
  end

  resource "jupyter_console" do
    url "https://files.pythonhosted.org/packages/cd/bb/fa8901715c009a00ea4c42897da8585189d4781c64f4617a8bd65ca01a3a/jupyter_console-5.2.0.tar.gz"
    sha256 "545dedd3aaaa355148093c5609f0229aeb121b4852995c2accfa64fe3e0e55cd"
  end

  resource "jupyter-core" do
    url "https://files.pythonhosted.org/packages/b6/2d/2804f4de3a95583f65e5dcb4d7c8c7183124882323758996e867f47e72af/jupyter_core-4.4.0.tar.gz"
    sha256 "ba70754aa680300306c699790128f6fbd8c306ee5927976cbe48adacf240c0b7"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "mistune" do
    url "https://files.pythonhosted.org/packages/9d/be/e06d4346cc608a01dec6bf770d7d0303a4fd6db588b318ced18f5f257145/mistune-0.8.3.tar.gz"
    sha256 "bc10c33bfdcaa4e749b779f62f60d6e12f8215c46a292d05e486b869ae306619"
  end

  resource "nbconvert" do
    url "https://files.pythonhosted.org/packages/88/68/0417164f344ad702245424d8f998b5c99f1c6147ad1ad645a465ae932134/nbconvert-5.4.0.tar.gz"
    sha256 "a8a2749f972592aa9250db975304af6b7337f32337e523a2c995cc9e12c07807"
  end

  resource "nbformat" do
    url "https://files.pythonhosted.org/packages/6e/0e/160754f7ae3e984863f585a3743b0ed1702043a81245907c8fae2d537155/nbformat-4.4.0.tar.gz"
    sha256 "f7494ef0df60766b7cabe0a3651556345a963b74dbc16bc7c18479041170d402"
  end

  resource "notebook" do
    url "https://files.pythonhosted.org/packages/cd/41/b04ddb3020bdb55431f2a06c87ff98bf68fb27cd0c165ae6421c17d3b5cb/notebook-5.7.0.tar.gz"
    sha256 "b85e4de3d54cf4f14fe1d0515a980ccb49ddd4cdd21250cc0d4fb6374d50b1a7"
  end

  resource "pandocfilters" do
    url "https://files.pythonhosted.org/packages/4c/ea/236e2584af67bb6df960832731a6e5325fd4441de001767da328c33368ce/pandocfilters-1.4.2.tar.gz"
    sha256 "b3dd70e169bb5449e6bc6ff96aea89c5eea8c5f6ab5e207fc2f521a2cf4a0da9"
  end

  resource "pathlib2" do
    url "https://files.pythonhosted.org/packages/db/a8/7d6439c1aec525ed70810abee5b7d7f3aa35347f59bc28343e8f62019aa2/pathlib2-2.3.2.tar.gz"
    sha256 "8eb170f8d0d61825e09a95b38be068299ddeda82f35e96c3301a8a5e7604cb83"
  end

  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/89/43/07d07654ee3e25235d8cea4164cdee0ec39d1fda8e9203156ebe403ffda4/pexpect-4.6.0.tar.gz"
    sha256 "2a8e88259839571d1251d278476f3eec5db26deb73a70be5ed5dc5435e418aba"
  end

  resource "pickleshare" do
    url "https://files.pythonhosted.org/packages/69/fe/dd137d84daa0fd13a709e448138e310d9ea93070620c9db5454e234af525/pickleshare-0.7.4.tar.gz"
    sha256 "84a9257227dfdd6fe1b4be1319096c20eb85ff1e82c7932f36efccfe1b09737b"
  end

  resource "prometheus_client" do
    url "https://files.pythonhosted.org/packages/a1/b1/08de091b392fec31da9bd3f5edd9214ec1c6931dd81641610ac20f3ff934/prometheus_client-0.3.1.tar.gz"
    sha256 "17bc24c09431644f7c65d7bce9f4237252308070b6395d6d8e87767afe867e24"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/8a/ad/cf6b128866e78ad6d7f1dc5b7f99885fb813393d9860778b2984582e81b5/prompt_toolkit-1.0.15.tar.gz"
    sha256 "858588f1983ca497f1cf4ffde01d978a3ea02b01c8a26a8bbc5cd2e66d816917"
  end

  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/7d/2d/e4b8733cf79b7309d84c9081a4ab558c89d8c89da5961bf4ddb050ca1ce0/ptyprocess-0.6.0.tar.gz"
    sha256 "923f299cc5ad920c68f2bc0bc98b75b9f838b93b599941a6b63ddbc2476394c0"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/71/2a/2e4e77803a8bd6408a2903340ac498cb0a2181811af7c9ec92cb70b0308a/Pygments-2.2.0.tar.gz"
    sha256 "dbae1046def0efb574852fab9e90209b23f556367b5a320c0bcb871c77c3e8cc"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/a0/b0/a4e3241d2dee665fea11baec21389aec6886655cd4db7647ddf96c3fad15/python-dateutil-2.7.3.tar.gz"
    sha256 "e27001de32f627c22380a688bcc43ce83504a7bc5da472209b4c70f02829f0b8"
  end

  resource "pyzmq" do
    url "https://files.pythonhosted.org/packages/f8/48/5416696b9f2eacc7d1f9fe3a7187ad54d769e09585ec0b59c137ab5c7575/pyzmq-18.0.1.tar.gz"
    sha256 "8b319805f6f7c907b101c864c3ca6cefc9db8ce0791356f180b1b644c7347e4c"
  end

  resource "qtconsole" do
    url "https://files.pythonhosted.org/packages/e4/6d/5af06751ece05ff0892dd02ce043062bc2d8f426f91894876f669a70ef1b/qtconsole-4.4.1.tar.gz"
    sha256 "7870b19e6a6b0ab3acc09ee65463c0ca7568b3a01a6902d7c4e1ed2c4fc4e176"
  end

  resource "scandir" do
    url "https://files.pythonhosted.org/packages/16/2a/557af1181e6b4e30254d5a6163b18f5053791ca66e251e77ab08887e8fe3/scandir-1.9.0.tar.gz"
    sha256 "44975e209c4827fc18a3486f257154d34ec6eaec0f90fef0cca1caa482db7064"
  end

  resource "Send2Trash" do
    url "https://files.pythonhosted.org/packages/13/2e/ea40de0304bb1dc4eb309de90aeec39871b9b7c4bd30f1a3cdcb3496f5c0/Send2Trash-1.5.0.tar.gz"
    sha256 "60001cc07d707fe247c94f74ca6ac0d3255aabcb930529690897ca2a39db28b2"
  end

  resource "simplegeneric" do
    url "https://files.pythonhosted.org/packages/3d/57/4d9c9e3ae9a255cd4e1106bb57e24056d3d0709fc01b2e3e345898e49d5b/simplegeneric-0.8.1.zip"
    sha256 "dc972e06094b9af5b855b3df4a646395e43d1c9d0d39ed345b7393560d0b9173"
  end

  resource "singledispatch" do
    url "https://files.pythonhosted.org/packages/d9/e9/513ad8dc17210db12cb14f2d4d190d618fb87dd38814203ea71c87ba5b68/singledispatch-3.4.0.3.tar.gz"
    sha256 "5b06af87df13818d14f08a028e42f566640aef80805c3b50c5056b086e3c2b9c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "terminado" do
    url "https://files.pythonhosted.org/packages/67/84/ce0ebd0f60e1cbe040f8e065eef7063855d59d9cf5e6438b3f8439fc7e15/terminado-0.8.1.tar.gz"
    sha256 "55abf9ade563b8f9be1f34e4233c7b7bde726059947a593322e8a553cc4c067a"
  end

  resource "testpath" do
    url "https://files.pythonhosted.org/packages/f4/8b/b71e9ee10e5f751e9d959bc750ab122ba04187f5aa52aabdc4e63b0e31a7/testpath-0.3.1.tar.gz"
    sha256 "0d5337839c788da5900df70f8e01015aec141aa3fe7936cb0d0a2953f7ac7609"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/e6/78/6e7b5af12c12bdf38ca9bfe863fcaf53dc10430a312d0324e76c1e5ca426/tornado-5.1.1.tar.gz"
    sha256 "4e5158d97583502a7e2739951553cbd88a72076f152b4b11b64b9a10c4c49409"
  end

  resource "traitlets" do
    url "https://files.pythonhosted.org/packages/a5/98/7f5ef2fe9e9e071813aaf9cb91d1a732e0a68b6c44a32b38cb8e14c3f069/traitlets-4.3.2.tar.gz"
    sha256 "9c4bd2d267b7153df9152698efb1050a5d84982d3384a37b2c1f7723ba3e7835"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/55/11/e4a2bb08bb450fdbd42cc709dd40de4ed2c472cf0ccb9e64af22279c5495/wcwidth-0.1.7.tar.gz"
    sha256 "3df37372226d6e63e1b1e1eda15c594bca98a22d33a23832a90998faa96bc65e"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "widgetsnbextension" do
    url "https://files.pythonhosted.org/packages/cb/37/ec01aac3e510645959795337bf652155cd7efb28aecc940b0773e8ba8e4d/widgetsnbextension-3.4.2.tar.gz"
    sha256 "fa618be8435447a017fd1bf2c7ae922d0428056cfc7449f7a8641edf76b48265"
  end

  resource "Mako" do
    url "https://files.pythonhosted.org/packages/eb/69/6137c60cae2ab8c911bff510bb6d1d23a0189f75d114bb277606c6486b5f/Mako-1.0.8.tar.gz"
    sha256 "04092940c0df49b01f43daea4f5adcecd0e50ef6a4b222be5ac003d5d84b2843"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "h5py" do
    url "https://files.pythonhosted.org/packages/43/27/a6e7dcb8ae20a4dbf3725321058923fec262b6f7835179d78ccc8d98deec/h5py-2.9.0.tar.gz"
    sha256 "9d41ca62daf36d6b6515ab8765e4c8c4388ee18e2a665701fef2b41563821002"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/cf/8d/6345b4f32b37945fedc1e027e83970005fc9c699068d2f566b82826515f2/numpy-1.16.2.zip"
    sha256 "6c692e3879dde0b67a9dc78f9bfb6f61c666b4562fd8619632d7043fb5b691b0"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "mpi4py" do
    url "https://files.pythonhosted.org/packages/55/a2/c827b196070e161357b49287fa46d69f25641930fd5f854722319d431843/mpi4py-3.0.1.tar.gz"
    sha256 "6549a5b81931303baf6600fa2e3bc04d8bd1d5c82f3c21379d0d64a9abcca851"
  end
  

  def install

    venv = virtualenv_create(libexec)
    venv.pip_install resources

    args = %W[
      ..
      -DCMAKE_BUILD_TYPE=Release
      -DCMAKE_CXX_COMPILER=/usr/local/opt/llvm/bin/clang++
      -DCMAKE_EXE_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_SHARED_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_MODULE_LINKER_FLAGS=-L/usr/local/opt/llvm/lib
      -DCMAKE_CXX_FLAGS="-stdlib=libc++"
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]

    mkdir "build" do
      system "cmake", *args
      system "make"
      system "make", "test"
      system "make", "install"
    end
  end

  test do
    system "python -c 'import pytriqs'"
  end
end
