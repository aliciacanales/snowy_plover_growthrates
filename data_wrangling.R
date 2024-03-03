## Datasets of either nesting or individual WSPs

## Locations (7): Coal Oil Point Reserve, Ormond Beach(Oxnard), Oxnard Lowland, Malibu, Huntington Beach, Hayward (South bay), Eden Landing Reserve

## Protected Areas: Coal Oil Point Reserve and Eden Landing Reserve
## State Parks: Malibu Lagoon and Huntington State Park
## Non-affiliated: Ormond Beach and Hayward

copr_nesting <- data.frame(year = c(seq(2001, 2023, 1)),
                           number_of_nests = c(1, 13, 24, 52, 64, 43, 66, 56, 65, 75, 84, 73, 66, 77, 62, 43, 52, 81, 97, 76, 93, 102, 70))
ormond_beach_nesting <- data.frame(year = c(seq(2003, 2023, 1)),
                                   number_of_nests = c(15, 12, 14, 22, 13, 38, 18, 19, 18, 20, 1, 
                                                       5, 19, 12, 23, 23, 42, 31, 23, 31, 53)) ## nesting data that hatched 
# oxnard <- data.frame(year = c(1980, 1989, 1991, 1995, 2000, 2002, 2003, 2004, 2005, 2006),
#                      number_of_nests = c(136, 175, 105, 69, 107, 164, 80, 119, 110, 125)) ## oxnard lowland https://westernsnowyplover.org/pdfs/WSP%20Final%20RP%2010-1-07.pdf 
# morro_bay_breeding <- data.frame(year = c(1980, 1989, 1991, 1995, 2000, 2002, 2003, 2004, 2005, 2006),
#                                      number_of_nests = c(80, 126, 87, 85, 113, 150, 172, 268, 259, 167))##morro bay table 4 https://westernsnowyplover.org/pdfs/WSP%20Final%20RP%2010-1-07.pdf

malibu_lagoon <- data.frame(year = c(seq(2004, 2017,1)),
                            individuals = c(33, 28, 12, 34, 37, 36, 67, 47, 78, 60, 25, 0, 18, 19)) ## LA county pdf
huntington_beach <- data.frame(year = c(seq(2005, 2017,1)),
                               individuals = c(0, 26, 23, 30, 13, 13, 81, 21, 20, 21, 12, 15, 7)) ## LA county pdf
hayward <- data.frame(year = c(seq(2010, 2023, 1)),
                      individuals = c(12, 8, 9, 32, 7, 2, 4, 0, 7, 12, 19, 56, 36, 5)) ## https://www.southbayrestoration.org/sites/default/files/documents/wspl_and_clte_monitoring_in_the_sf_bay_annual_report_2023_final_01-24-24.pdf
eden_landing <- data.frame(year = c(seq(2010, 2023, 1)),
                           individuals = c(184, 185, 82, 97, 94, 76, 120, 144, 142, 117, 115, 44, 89, 116)) ## same pdf as above. ecological reserve
