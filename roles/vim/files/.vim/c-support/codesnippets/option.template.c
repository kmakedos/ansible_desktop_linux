/*
 * =====================================================================================
 *
 *       Filename:  option.template.c
 *
 *    Description:  Template for Options parsing
 *
 *        Version:  1.0
 *        Created:  09/03/16 09:57:49
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Kostas Makedos (KM), kostas.makedos@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

int c;
char *cvalue;
static struct option long_options[] = {
    { "usage", no_argument, 0, 'u' },
    { "host", required_argument, 0, 'h' },
    { "port", required_argument, 0, 'p' }
};
int option_index = 0;
while (( c = getopt_long(argc, argv, "uh:p:", long_options, &option_index)) != -1)
    switch (c){
        case 'u': 
            printf("Usage:\n");
            break;
        case 'h':
            printf("Host:%s\n", optarg);
            break;
        case 'p':
            printf("Port:%s\n",optarg);
            break;
        default:
            exit(0);
    }

