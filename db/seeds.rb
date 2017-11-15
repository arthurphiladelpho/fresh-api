
User.create(first_name: 'Odd',
            last_name: 'Prophet',
            password_digest: 'pass123',
            email: 'odd@prophet.com',
            date_of_birth: '1992-6-22',
            gender: 0,
            role: 0)

User.create(first_name: 'Arthur',
            last_name: 'Philadelpho',
            password_digest: 'pass123',
            email: 'arthur@philadelpho.com',
            date_of_birth: '1992-6-22',
            gender: 0,
            role: 1)

Address.create(neighborhood: 'Ipanema',
               street: 'Rua Barão da Torre',
               number: 219,
               complement: 'casa',
               cep: 22_411_001,
               city: 'Rio de Janeiro',
               state: 'RJ',
               country: 'Brasil')

Address.create(neighborhood: 'Ipanema',
               street: 'Rua Redentor',
               number: 19,
               complement: 'apt 201',
               cep: 22_421_030,
               city: 'Rio de Janeiro',
               state: 'RJ',
               country: 'Brasil')

Location.create(user_id: 1,
                address_id: 1)

Location.create(user_id: 2,
                address_id: 2)

Service.create(name: 'Manicure',
               description: 'Trimming nails and removing cuticles of the hands.',
               cost: 25)

Service.create(name: 'Pedicure',
               description: 'Trimming nails and removing cuticles of the hands.',
               cost: 25)

Appointment.create(client_id: 1,
                   worker_id: 2,
                   service_id: 1,
                   location_id: 1,
                   start_at: DateTime.parse('25th Oct 2017 16:19:09'),
                   canceled: false,
                   end_at: DateTime.parse('25th Oct 2017 16:59:49'))

ClientRatings.create(client_id: 1,
                     worker_id: 2,
                     rating: 5,
                     comments: 'Client was very polite.')

WorkerRatings.create(client_id: 1,
                     worker_id: 2,
                     rating: 5,
                     comments: 'Worker was very kind.')

puts 'Seed finished.'
