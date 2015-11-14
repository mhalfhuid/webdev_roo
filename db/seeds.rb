# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dimension.create!([
  {
    dimensie_code: 'dim1',
    dimensie_naam: 'Tijd',
    dimensie_omschrijving: 'maand level',
    bron_type: 'TST',
    bron_naam: 'TEST',
    doeltabel_naam: 'TEST TARGET',
    wijzig_ind: 'J',
    dimensie_item_num_ind: 'N20',
    userid_inserted: 'TEST_USER',
    datum_inserted: ' ',
    userid_updated: 'TEST_USER',
    datum_updated: ' '
  },
  {
    dimensie_code: 'dim2',
    dimensie_naam: 'ORG',
    dimensie_omschrijving: 'Korps Amsterdam',
    bron_type: 'TST2',
    bron_naam: 'TEST2',
    doeltabel_naam: 'second TEST TARGET',
    wijzig_ind: 'J',
    dimensie_item_num_ind: 'N30',
    userid_inserted: 'TEST_USER2',
    datum_inserted: ' ',
    userid_updated: 'TEST_USER2',
    datum_updated: ' '
  }
])

Format.create!([
  {
    indeling_code: 'MK1',
    indeling_naam: 'Maatschappelijke Klasse',
    indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
    bron_naam: 'MK tabel',
    userid_inserted: 'TEST_USER',
    datum_inserted: ' ',
    userid_updated: 'TEST_USER',
    datum_updated: ' '
  },
  {
    indeling_code: 'MK2',
    indeling_naam: 'Maatschappelijke Klasse twee',
    indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
    bron_naam: 'MK tabel2',
    userid_inserted: 'TEST_USER2',
    datum_inserted: ' ',
    userid_updated: 'TEST_USER2',
    datum_updated: ' '
  }
])
FormatVersion.create!([
  {
    indeling_code: 'MK1',
    format_id: '1',
    versie_nummer: '1',
    versie_naam: 'Eerste versie 20-4-2014',
    huidig_ind: 'N',
    geldig_van_datum: ' ',
    geldig_tot_datum: ' ',
    userid_inserted: 'Functioneel beheerder1',
    datum_inserted: ' ',
    userid_updated: 'TEST_USER2',
    datum_updated: ' '
  },
  {
    indeling_code: 'MK1',
    format_id: '1',
    versie_nummer: '2',
    versie_naam: 'Tweede versie 21-7-2015',
    huidig_ind: 'J',
    geldig_van_datum: ' ',
    geldig_tot_datum: ' ',
    userid_inserted: 'Functioneel beheerder1',
    datum_inserted: ' ',
    userid_updated: 'TEST_USER2',
    datum_updated: ' '
  },
  {
    indeling_code: 'MK5',
    format_id: '1',
    versie_nummer: '2',
    versie_naam: 'Tweede versie 21-7-2015',
    huidig_ind: 'J',
    geldig_van_datum: ' ',
    geldig_tot_datum: ' ',
    userid_inserted: 'Functioneel beheerder1',
    datum_inserted: ' ',
    userid_updated: 'TEST_USER2',
    datum_updated: ' '
  }


])
FormatItem.create!([
  {
    indeling_code: 'MK1',
    versie_nummer: '2',
    format_version_id: '2',
    item_sleutel: '1',
    nivo_aantal: '2',
    nivo1_code: '1',
    nivo1_omschrijving: 'eerste',
    nivo2_code: '2',
    nivo2_omschrijving: 'tweede',
    nivo3_code: '',
    nivo3_omschrijving: '',
    nivo4_code: '',
    nivo4_omschrijving: '',
    nivo5_code: '',
    nivo5_omschrijving: '',
    nivo6_code: '',
    nivo6_omschrijving: '',
    userid_inserted: 'TEST_USER2',
    datum_inserted: '',
    userid_updated: '',
    datum_updated: ''
  },
  {
    indeling_code: 'MK1',
    versie_nummer: '2',
    format_version_id: '2',
    item_sleutel: '2',
    nivo_aantal: '2',
    nivo1_code: '1',
    nivo1_omschrijving: 'eerste deel',
    nivo2_code: '2',
    nivo2_omschrijving: 'tweede deel',
    nivo3_code: '',
    nivo3_omschrijving: '',
    nivo4_code: '',
    nivo4_omschrijving: '',
    nivo5_code: '',
    nivo5_omschrijving: '',
    nivo6_code: '',
    nivo6_omschrijving: '',
    userid_inserted: 'TEST_USER3',
    datum_inserted: '',
    userid_updated: '',
    datum_updated: ''
  },
  {
    indeling_code: 'MK1',
    versie_nummer: '2',
    format_version_id: '1',
    item_sleutel: '2',
    nivo_aantal: '2',
    nivo1_code: '1',
    nivo1_omschrijving: 'eerste deel',
    nivo2_code: '2',
    nivo2_omschrijving: 'tweede deel',
    nivo3_code: '',
    nivo3_omschrijving: '',
    nivo4_code: '',
    nivo4_omschrijving: '',
    nivo5_code: '',
    nivo5_omschrijving: '',
    nivo6_code: '',
    nivo6_omschrijving: '',
    userid_inserted: 'TEST_USER3',
    datum_inserted: '',
    userid_updated: '',
    datum_updated: ''
  }
])

DimItem.create!([
  {
    dimensie_code: 'dim2',
    dimension_id: '2',
    item_sleutel: '1',
    item_naam: 'Amsterdam Amstelland1',
    item_omschrijving: 'Amstelland en omgeving',
    userid_inserted: 'test user',
    datum_inserted: '',
    userid_updated: '',
    datum_updated: ''
  },
  {
    dimensie_code: 'dim2',
    dimension_id: '2',
    item_sleutel: '2',
    item_naam: 'Amsterdam Amstelland2',
    item_omschrijving: 'Amstelland industrieterrein',
    userid_inserted: 'test user',
    datum_inserted: '',
    userid_updated: '',
    datum_updated: ''
  }
])
DimFormat.create!([
  {
    dimension_id: '1',
    format_version_id: '2',
    indeling_code: '2',
    versie_nummer: '1',
    dimensie_code: 'dim1',
    userid_inserted: 'TEST_USER2',
    datum_inserted: ' ',
    userid_updated: '',
    datum_updated: ''
  },
  {
    dimension_id: '2',
    format_version_id: '2',
    indeling_code: '2',
    versie_nummer: '1',
    dimensie_code: 'dim2',
    userid_inserted: 'TEST_USER3',
    datum_inserted: ' ',
    userid_updated: '',
    datum_updated: ' '
  }
])
FormatItemLink.create!([
  {
     format_item_id: '1',
     dim_format_id: '1',
     dim_item_id: '1',
     indeling_code: 'MK1',
     versie_nummer: '2',
     indeling_item_sleutel: '1',
     dimensie_code: 'dim2',
     dimensie_item_sleutel_van: '',
     dimensie_item_sleutel_tot: '',
     dimensie_item_sleutel_van_sort: '',
     dimensie_item_sleutel_tot_sort: '',
     is_range: '4',
     userid_inserted: 'TEST_USER2',
     datum_inserted: '',
     userid_updated: '',
     datum_updated: ''
  },
  {
     format_item_id: '1',
     dim_format_id: '1',
     dim_item_id: '2',
     indeling_code: 'MK1',
     versie_nummer: '2',
     indeling_item_sleutel: '1',
     dimensie_code: 'dim2',
     dimensie_item_sleutel_van: '',
     dimensie_item_sleutel_tot: '',
     dimensie_item_sleutel_van_sort: '',
     dimensie_item_sleutel_tot_sort: '',
     is_range: '5',
     userid_inserted: 'TEST_USER2',
     datum_inserted: '',
     userid_updated: '',
     datum_updated: ''
  },
  {
     format_item_id: '1',
     dim_format_id: '1',
     dim_item_id: '3',
     indeling_code: 'MK1',
     versie_nummer: '2',
     indeling_item_sleutel: '1',
     dimensie_code: 'dim2',
     dimensie_item_sleutel_van: '',
     dimensie_item_sleutel_tot: '',
     dimensie_item_sleutel_van_sort: '',
     dimensie_item_sleutel_tot_sort: '',
     is_range: '5',
     userid_inserted: 'TEST_USER2',
     datum_inserted: '',
     userid_updated: '',
     datum_updated: ''
  }
])
