SaltConf20: Managing Networks and Applications Using Salt, Without Minions
==========================================================================

salt-sproxy configuration files for the SaltConf20 live demo.

Usage
-----

1. Clone this repository:

.. code-block:: bash

    git clone https://github.com/mirceaulinic/SaltConf20.git

2. Move into the new ``SaltConf20`` directory:

.. code-block:: bash

    cd SaltConf20/

3. Create a symlink to the ``/etc/salt`` and ``/srv/salt`` directories:

.. code-block:: bash

    ln -s $PWD/srv/salt /srv/

    ln -s $PWD/etc/salt /etc/

4. Using `docker-compose <https://docs.docker.com/compose/>`__, start up the 
   Docker containers for Salt:

.. code-block:: bash

    docker-compose -f docker-compose.yml up -d

✨🍰✨
