Interop 2020: Automating Network Using Salt, Without Running Proxy Minions
==========================================================================

salt-sproxy configuration files for the Interop live demo.

Usage
-----

1. Clone this repository:

.. code-block:: bash

    git clone https://github.com/mirceaulinic/interop-2020.git

2. Move into the new ``interop-2020`` directory:

.. code-block:: bash

    cd interop-2020/

3. Create a symlink to the ``/etc/salt`` and ``/srv/salt`` directories:

.. code-block:: bash

    ln -s $PWD/srv/salt /srv/

    ln -s $PWD/etc/salt /etc/

4. Using `docker-compose <https://docs.docker.com/compose/>`__, start up the 
   Docker containers for Salt:

.. code-block:: bash

    docker-compose -f docker-compose.yml up -d

✨🍰✨
