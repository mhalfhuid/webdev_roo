require 'spec_helper'
describe 'Navigate between index and show pages' do
  it 'link from show to index page' do
    dimension = Dimension.create( dimensie_code: 'dim1',
                                  dimensie_naam: 'MK',
                                  dimensie_omschrijving: 'Level 1 dimension',
                                  bron_type: 'TST',
                                  bron_naam: 'TEST',
                                  doeltabel_naam: 'TEST TARGET',
                                  wijzig_ind: 'J',
                                  dimensie_item_num_ind: 'N20',
                                  userid_inserted: 'TEST_USER',
                                  datum_inserted: ' ',
                                  userid_updated: 'TEST_USER',
                                  datum_updated: ' ')
    # starts from show page
    visit dimension_url(dimension)
    click_link 'All Dimensions'
    # switches from show to index
    expect(current_path).to eq(dimensions_path)
  end
  it 'link from index to show page' do
    dimension = Dimension.create( dimensie_code: 'dim1',
                                  dimensie_naam: 'MK',
                                  dimensie_omschrijving: 'Level 1 dimension',
                                  bron_type: 'TST',
                                  bron_naam: 'TEST',
                                  doeltabel_naam: 'TEST TARGET',
                                  wijzig_ind: 'J',
                                  dimensie_item_num_ind: 'N20',
                                  userid_inserted: 'TEST_USER',
                                  datum_inserted: ' ',
                                  userid_updated: 'TEST_USER',
                                  datum_updated: ' ')
    # Starts from index page
    visit dimensions_url
    click_link dimension.dimensie_naam
    # switches from index to show
    expect(current_path).to eq(dimension_path(dimension))
  end
end
