===================
Main README Section
===================

This project is a sample project that you can use for any python projects.

Run bootstrap_project.sh and it will set up your project and run sphinx-quickstart:

.. code-block:: bash

   cd dev
   ./bootstrap_project.sh

It will setup the appropriate directory structure:

.. code-block:: bash

    ProjectDir/
        docs/
        tests/
        src/
        dev/

You should place your python package/source under the src directory.

Edit the setup.cfg and this document to set some basic properties:

.. note:: A simple replace-all-case-sensitive on the whole project would work

- PROJECT --> Your project name
- PROJECTAUTHOR --> The Authors Name
- PROJECTGITURL --> The URL of the repo
- PROJECTURL --> The URL to associate with the project (public website likely if you have used it.  Same as PROJECTGITURL otherwise)
- PROJECTDOCURL --> The URL of the documentation (readthedocs likely if you have used it.  Same as PROJECTGITURL otherwise)

When you are ready to remove all the unnecessary bootstrap code and git linkage just run:

.. code-block:: bash

   cd dev
   ./bootstrap_project.sh stripbootstrap

**Please be aware:**

We use a setup.cfg that is parsable by setuptools.  You MAY use pbr directives
in there too but we intentionally use the setuptools style/compatible directives. Don't be confused
if you go read up on pbr.

It uses pbr from the openstack project to automatically:

- Generate AUTHORS
- Generate CHANGELOG
- potentially generate release notes
- Take care of pep8 compatible, pep440 compatible, semantic compatible versioning
  including monotonic versioning which is incredibly useful in CI/CD environments.

To get started, replace all of this "Main README Section" with real stuff about
your project.

Feel free to remove any dev folder contents you want!

--------------------------------
Generating Authors and CHANGELOG
--------------------------------

When you want to generate AUTHORS, CHANGELOG etc simply run one
packaging command to have pbr go through the actions:

.. code-block:: bash

    python setup.py sdist

==========================
Get Developing!
==========================
Checkout the code:

.. code-block:: bash

   git clone PROJECTURL

Install Dev Dependencies:

.. code-block:: bash

    cd dev
    pip install requirements.txt

==========================
To Generate the Docs
==========================

.. note::  You will want to replace the placeholder strings before you generate documentation

Sphinx will integrate Authors and Changelog if they have already been generated
by pbr.

Install Dev Dependencies then:

.. code-block:: bash

    cd docs
    make html

Make any manual changes that you want to docs and checkin all the source document
templates you want.

==========================
References
==========================

For Sphinx documentation:

- http://www.sphinx-doc.org/en/master/usage/quickstart.html

For Restructured Text within the context of Sphinx:

- http://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html

For Learning about setuptools, pbr, distutils (Specifically setuptools setup.cfg)

- https://setuptools.readthedocs.io/en/latest/setuptools.html
- https://setuptools.readthedocs.io/en/latest/setuptools.html#configuring-setup-using-setup-cfg-files
- https://docs.openstack.org/pbr/latest/


==========================
Frequently Asked Questions
==========================

1. Why this directory structure?
      https://blog.ionelmc.ro/2014/05/25/python-packaging/#the-structure

2. Why Sphinx/restructured text instead of markdown?
      Ultimately because restructured text is more flexible and it is automatically usable
      by readthedocs and sphinx.  Also, http://www.zverovich.net/2016/06/16/rst-vs-markdown.html.
