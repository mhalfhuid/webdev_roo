require 'spec_helper'

describe 'Links from dimensions to dim_items and vice versa' do
  it 'Links dimension show page to dim_items list page' do

    dimension2 = Dimension.create(dimensie_code: 'dim2',
                                  dimensie_naam: 'Org',
                                  dimensie_omschrijving: 'Regio Amsterdam',
                                  bron_type: 'TST',
                                  bron_naam: 'TEST',
                                  doeltabel_naam: 'TEST TARGET',
                                  wijzig_ind: 'J',
                                  dimensie_item_num_ind: 'N20',
                                  userid_inserted: 'TEST_USER',
                                  datum_inserted: ' ',
                                  userid_updated: 'TEST_USER',
                                  datum_updated: ' ')

    dim_item1 = DimItem.create( dimensie_code: 'dim2',
                                dimension_id: '2',
                                item_sleutel: '1',
                                item_naam: 'Amsterdam Amstelland1',
                                item_omschrijving: 'Amstelland en omgeving',
                                userid_inserted: 'test user',
                                datum_inserted: '',
                                userid_updated: '',
                                datum_updated: '')

    dim_item2 = DimItem.create( dimensie_code: 'dim2',
                                dimension_id: '2',
                                item_sleutel: '2',
                                item_naam: 'Amsterdam Amstelland2',
                                item_omschrijving: 'Amstelland industrieterrein',
                                userid_inserted: 'test user',
                                datum_inserted: '',
                                userid_updated: '',
                                datum_updated: '')

    visit dimension_url(dimension2)
    click_link dimension2.dimensie_naam
    expect(current_path).to eq(dimension_dim_items_path(dimension2))
  end

  it 'links dim items index page to dimension show page' do
    dimension2 = Dimension.create(dimensie_code: 'dim2',
                                  dimensie_naam: 'Org',
                                  dimensie_omschrijving: 'Regio Amsterdam',
                                  bron_type: 'TST',
                                  bron_naam: 'TEST',
                                  doeltabel_naam: 'TEST TARGET',
                                  wijzig_ind: 'J',
                                  dimensie_item_num_ind: 'N20',
                                  userid_inserted: 'TEST_USER',
                                  datum_inserted: ' ',
                                  userid_updated: 'TEST_USER',
                                  datum_updated: ' ')

    visit dimension_dim_items_path(dimension2)
    click_link 'back to dimension'
    expect(current_path).to eq(dimension_path(dimension2))
  end
end
