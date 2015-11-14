require 'spec_helper'

describe 'Links between Dimension and DimFormat' do
  it 'Links from Dimension show page to DimFormat index page' do
    dimension1 = Dimension.create(  dimensie_code: 'dim1',
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
                                 )
    visit dimension_url(dimension1)
    click_link 'Dimension Formats'
    expect(current_path).to eq(dimension_dim_formats_path(dimension1))
  end
  it 'Links from DimFormat to dimension show page' do
    dimension1 = Dimension.create(  dimensie_code: 'dim1',
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
                                 )

    dimformat1 = DimFormat.create(  dimension_id: '1',
                                    format_version_id: '2',
                                    indeling_code: '2',
                                    versie_nummer: '1',
                                    dimensie_code: 'dim1',
                                    userid_inserted: 'TEST_USER2',
                                    datum_inserted: ' ',
                                    userid_updated: '',
                                    datum_updated: ''
                                 )
    visit dimension_dim_formats_url(dimension1)
    click_link 'to dimension'
    expect(current_path).to eq(dimension_path(dimension1))
  end
end
